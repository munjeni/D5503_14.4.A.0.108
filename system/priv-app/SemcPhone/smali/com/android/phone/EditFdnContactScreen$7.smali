.class Lcom/android/phone/EditFdnContactScreen$7;
.super Landroid/os/Handler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 550
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 552
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 553
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 555
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 556
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    .line 558
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 562
    :cond_1
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v2

    .line 565
    .local v2, "iccPin2RetryCount":I
    if-lez v2, :cond_0

    .line 566
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const v6, 0x7f0b033d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const v6, 0x7f0b00e0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 573
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 577
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "iccPin2RetryCount":I
    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # getter for: Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$900(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 578
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # invokes: Lcom/android/phone/EditFdnContactScreen;->addContact()V
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1000(Lcom/android/phone/EditFdnContactScreen;)V

    goto :goto_0

    .line 580
    :cond_3
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$7;->this$0:Lcom/android/phone/EditFdnContactScreen;

    # invokes: Lcom/android/phone/EditFdnContactScreen;->updateContact()V
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$1100(Lcom/android/phone/EditFdnContactScreen;)V

    goto/16 :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
