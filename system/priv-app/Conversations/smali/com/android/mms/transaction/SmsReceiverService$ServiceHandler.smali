.class final Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    .line 164
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    const-string v4, "Conversations"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling incoming message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 178
    .local v3, "serviceId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 180
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_8

    .line 181
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "action":Ljava/lang/String;
    const-string v4, "errorCode"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 185
    .local v1, "error":I
    const-string v4, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # invokes: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V
    invoke-static {v4, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    .line 204
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v4, v3}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 208
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "error":I
    :goto_1
    return-void

    .line 187
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "error":I
    :cond_2
    const-string v4, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # invokes: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V
    invoke-static {v4, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    goto :goto_0

    .line 189
    :cond_3
    const-string v4, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 190
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # invokes: Lcom/android/mms/transaction/SmsReceiverService;->handleMessageStatusReceived(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 191
    :cond_4
    const-string v4, "com.android.mms.transaction.SmsSendQueuedMessagesReceiver.SEND_QUEUED_MESSAGES"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 193
    :cond_5
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # invokes: Lcom/android/mms/transaction/SmsReceiverService;->handleSendQueuedMessages()V
    invoke-static {v4}, Lcom/android/mms/transaction/SmsReceiverService;->access$400(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto :goto_0

    .line 194
    :cond_6
    const-string v4, "com.android.mms.transaction.UPDATE_NOTIFICATIONS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 196
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # invokes: Lcom/android/mms/transaction/SmsReceiverService;->handleUpdateNotifications()V
    invoke-static {v4}, Lcom/android/mms/transaction/SmsReceiverService;->access$500(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto :goto_0

    .line 197
    :cond_7
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    # invokes: Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$600(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 206
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "error":I
    :cond_8
    const-string v4, "SmsReceiverService"

    const-string v5, "Intent was null, do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
