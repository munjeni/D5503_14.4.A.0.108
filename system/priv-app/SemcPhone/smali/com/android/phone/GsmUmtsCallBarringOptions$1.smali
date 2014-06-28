.class Lcom/android/phone/GsmUmtsCallBarringOptions$1;
.super Landroid/os/Handler;
.source "GsmUmtsCallBarringOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsCallBarringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsCallBarringOptions;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 198
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onFinished(Landroid/preference/Preference;Z)V

    .line 199
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 202
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 203
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "GsmUmtsCallBarringOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change password for call barring failed with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    :goto_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # invokes: Lcom/android/phone/GsmUmtsCallBarringOptions;->resetPwChangeState()V
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$200(Lcom/android/phone/GsmUmtsCallBarringOptions;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    const v2, 0x7f0b0100

    # invokes: Lcom/android/phone/GsmUmtsCallBarringOptions;->displayMessage(I)V
    invoke-static {v1, v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$100(Lcom/android/phone/GsmUmtsCallBarringOptions;I)V

    goto :goto_1

    .line 222
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onFinished(Landroid/preference/Preference;Z)V

    .line 223
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 224
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 225
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_3

    .line 226
    const-string v1, "GsmUmtsCallBarringOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not disable all call barring with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 229
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 230
    :cond_4
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 231
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto/16 :goto_0

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    const v2, 0x7f0b00f8

    # invokes: Lcom/android/phone/GsmUmtsCallBarringOptions;->displayMessage(I)V
    invoke-static {v1, v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$100(Lcom/android/phone/GsmUmtsCallBarringOptions;I)V

    .line 235
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    # invokes: Lcom/android/phone/GsmUmtsCallBarringOptions;->resetCallBarringPrefState(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$400(Lcom/android/phone/GsmUmtsCallBarringOptions;Z)V

    goto/16 :goto_0

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
