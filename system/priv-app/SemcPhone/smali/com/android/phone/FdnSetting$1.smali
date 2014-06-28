.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 284
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 289
    :sswitch_0
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const-string v5, "Handle EVENT_PIN2_ENTRY_COMPLETE"

    # invokes: Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 291
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_1

    .line 293
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 295
    .local v3, "e":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/phone/FdnSetting$6;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 303
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0b0340

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;I)V

    .line 309
    .end local v3    # "e":Lcom/android/internal/telephony/CommandException$Error;
    :goto_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)V

    goto :goto_0

    .line 297
    .restart local v3    # "e":Lcom/android/internal/telephony/CommandException$Error;
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 300
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0b033d

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1

    .line 307
    .end local v3    # "e":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->toggleDataConnection()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    goto :goto_1

    .line 318
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const-string v5, "Handle EVENT_PIN2_CHANGE_COMPLETE"

    # invokes: Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    .line 319
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 320
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    .line 321
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 322
    .local v2, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_3

    .line 325
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 374
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :goto_2
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 375
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    .restart local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v1

    .line 341
    .local v1, "attemptsRemaining":I
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    .line 342
    const-string v4, "FdnSetting"

    const-string v5, "PUK2 Blocked while changing PIN2.Options\'Enable FDN\' & \'Change PIN2\' disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 345
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 346
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 349
    :cond_4
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 350
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0b035b

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;I)V

    .line 351
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    goto :goto_2

    .line 353
    :cond_5
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0b035a

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;I)V

    .line 354
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)V

    goto :goto_2

    .line 359
    .end local v1    # "attemptsRemaining":I
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_6
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 360
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0b0364

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;I)V

    .line 366
    :goto_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_7

    .line 367
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const-string v5, "Handle EVENT_PIN2_CHANGE_COMPLETE_TOGGLE_FDN"

    # invokes: Lcom/android/phone/FdnSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;Z)V

    .line 371
    :cond_7
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_2

    .line 362
    :cond_8
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0b035f

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;I)V

    goto :goto_3

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
    .end sparse-switch

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
