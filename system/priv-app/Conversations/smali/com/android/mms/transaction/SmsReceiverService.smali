.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Lcom/android/mms/transaction/ConversationService;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final IDD_NUMBER_CONVERT_FAIL_SUB_ERROR:I = 0x200

.field public static final MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field private static final MSG_FDN_ERROR:I = 0x2

.field private static final MSG_IDD_ERROR:I = 0x3

.field private static final MSG_RADIO_ERROR:I = 0x1

.field public static final NOTIFICATION_NEW_MESSAGE:I = 0x1

.field private static final STATUS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SmsReceiverService"


# instance fields
.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "content://sms/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->STATUS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/mms/transaction/ConversationService;-><init>()V

    .line 92
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->showInfoDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleMessageStatusReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendQueuedMessages()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleUpdateNotifications()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 469
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pdus"

    const-string v3, "pdus"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "format"

    const-string v3, "format"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x18000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 475
    .local v0, "smsDialogIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method private handleCTMessageStatus(I)I
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x3

    .line 384
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message status from CT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    shr-int/lit8 v1, p1, 0x8

    .line 387
    .local v1, "errorClass":I
    and-int/lit16 v2, p1, 0xff

    .line 388
    .local v2, "statusCode":I
    const/4 v0, 0x3

    .line 390
    .local v0, "deliveryStatus":I
    if-ltz v2, :cond_0

    if-gt v2, v6, :cond_0

    .line 391
    const/4 v0, 0x2

    .line 409
    :goto_0
    return v0

    .line 392
    :cond_0
    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    const/16 v3, 0xb

    if-gt v2, v3, :cond_1

    .line 393
    const/4 v0, 0x3

    goto :goto_0

    .line 394
    :cond_1
    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_5

    .line 396
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 398
    :cond_3
    if-ne v1, v6, :cond_4

    .line 399
    const/4 v0, 0x3

    goto :goto_0

    .line 401
    :cond_4
    const-string v3, "SmsReceiverService"

    const-string v4, "Wrong error class, so set deliveryStatus to FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    :cond_5
    const-string v3, "SmsReceiverService"

    const-string v4, "Unknown status code, so set deliveryStatus to FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMessageStatusReceived(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, -0x1

    .line 310
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 311
    .local v3, "messageUri":Landroid/net/Uri;
    const-string v10, "pdu"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, [B

    move-object v4, v10

    check-cast v4, [B

    .line 313
    .local v4, "pdu":[B
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 316
    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/model/SmsMessage;->getMessageIdByUri(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 318
    .local v2, "messageId":I
    if-eq v2, v13, :cond_8

    .line 319
    sget-object v10, Lcom/android/mms/transaction/SmsReceiverService;->STATUS_URI:Landroid/net/Uri;

    int-to-long v11, v2

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 320
    .local v9, "updateUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 321
    .local v1, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v5

    .line 327
    .local v5, "status":I
    const/4 v0, -0x1

    .line 328
    .local v0, "deliveryStatus":I
    const v10, 0xffff

    and-int/2addr v10, v5

    if-eqz v10, :cond_4

    .line 331
    const/16 v10, 0x40

    if-lt v5, v10, :cond_2

    .line 332
    const/4 v0, 0x3

    .line 356
    :cond_0
    :goto_0
    invoke-static {p0, v9, v5, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->updateReceivedMessageStatus(Landroid/content/Context;Landroid/net/Uri;II)V

    .line 359
    const/4 v10, 0x3

    if-ne v0, v10, :cond_1

    .line 364
    invoke-static {p0, v3}, Lcom/sonyericsson/conversations/model/Message;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v7

    .line 366
    .local v7, "threadId":J
    const-wide/16 v10, -0x1

    cmp-long v10, v7, v10

    if-eqz v10, :cond_1

    .line 367
    const/4 v10, 0x2

    invoke-static {p0, v10}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v10

    sget-object v11, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    .line 375
    .end local v0    # "deliveryStatus":I
    .end local v1    # "message":Landroid/telephony/SmsMessage;
    .end local v2    # "messageId":I
    .end local v5    # "status":I
    .end local v7    # "threadId":J
    .end local v9    # "updateUri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-void

    .line 333
    .restart local v0    # "deliveryStatus":I
    .restart local v1    # "message":Landroid/telephony/SmsMessage;
    .restart local v2    # "messageId":I
    .restart local v5    # "status":I
    .restart local v9    # "updateUri":Landroid/net/Uri;
    :cond_2
    const/16 v10, 0x20

    if-lt v5, v10, :cond_3

    .line 334
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    :cond_3
    if-eq v5, v13, :cond_0

    .line 336
    const/4 v0, 0x2

    goto :goto_0

    .line 342
    :cond_4
    shr-int/lit8 v6, v5, 0x10

    .line 344
    .local v6, "statusCdma":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 345
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/SmsReceiverService;->handleCTMessageStatus(I)I

    move-result v0

    goto :goto_0

    .line 347
    :cond_5
    const/16 v10, 0x300

    if-lt v6, v10, :cond_6

    .line 348
    const/4 v0, 0x3

    goto :goto_0

    .line 349
    :cond_6
    const/16 v10, 0x200

    if-lt v6, v10, :cond_7

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :cond_7
    if-eq v6, v13, :cond_0

    .line 352
    const/4 v0, 0x2

    goto :goto_0

    .line 372
    .end local v0    # "deliveryStatus":I
    .end local v1    # "message":Landroid/telephony/SmsMessage;
    .end local v5    # "status":I
    .end local v6    # "statusCdma":I
    .end local v9    # "updateUri":Landroid/net/Uri;
    :cond_8
    const-string v10, "SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[MESSAGE_STATUS_RECEIVED] Can\'t find message for status update: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleSendQueuedMessages()V
    .locals 0

    .prologue
    .line 298
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->moveOutboxMessagesToQueuedBox(Landroid/content/Context;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 302
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 215
    const-string v3, "SmsReceiverService"

    const-string v4, "bundle is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService(Landroid/content/Context;)Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyServiceStateProxy()Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;

    move-result-object v1

    .line 220
    .local v1, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;
    invoke-interface {v1, v0}, Lcom/sonymobile/conversations/proxy/ITelephonyServiceStateProxy;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 221
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto :goto_0
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # I

    .prologue
    const/4 v5, 0x0

    .line 284
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v2

    .line 285
    .local v2, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v2, p1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 286
    .local v1, "msgs":[Landroid/telephony/SmsMessage;
    invoke-direct {p0, p0, v1, p1}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 288
    .local v0, "messageUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 289
    aget-object v3, v1, v5

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v3, v4, :cond_1

    .line 290
    invoke-static {p0, v5}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonyericsson/conversations/notifications/Notification;->addSilent(Landroid/net/Uri;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-static {p0, v5}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # I

    .prologue
    const/4 v4, 0x0

    const-wide/16 v9, 0x1

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 245
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 246
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "result"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 247
    .local v1, "resultCode":I
    const-string v3, "errorCode"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, "errorCode":I
    const-string v3, "Conversations"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsSent resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    if-eqz v2, :cond_1

    .line 253
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 254
    invoke-static {p0, v2, v7, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 255
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 259
    invoke-static {p0, v6}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    if-eq v1, v7, :cond_3

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 262
    :cond_3
    const/4 v3, 0x6

    invoke-static {p0, v2, v3, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 263
    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 265
    :cond_4
    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 266
    invoke-static {p0, v2, v8, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 267
    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 269
    :cond_5
    if-ne v1, v6, :cond_6

    const/16 v3, 0x200

    if-ne v0, v3, :cond_6

    .line 271
    invoke-static {p0, v2, v8, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 272
    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 276
    :cond_6
    invoke-static {p0, v2, v8, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 277
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 278
    invoke-static {p0, v6}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private handleUpdateNotifications()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    .line 306
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    .line 307
    return-void
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 421
    const/4 v5, 0x0

    aget-object v3, p2, v5

    .line 422
    .local v3, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    .line 423
    .local v2, "protocolIdentifier":I
    const/16 v0, 0x40

    .line 424
    .local v0, "TYPE_ZERO_MSG":I
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "body":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "etop10"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 456
    :goto_0
    return-object v4

    .line 437
    :cond_0
    if-ne v2, v0, :cond_1

    .line 438
    const-string v5, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TP_PID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",Received Type0 Message, Ignoring It"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getIgnoreClass2SmsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v5, v6, :cond_2

    .line 446
    const-string v5, "SmsReceiverService"

    const-string v6, "Receiving Class 2 Message, Ignoring It"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v5

    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v5, v6, :cond_3

    .line 451
    invoke-direct {p0, p1, p3}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 453
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 454
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 456
    :cond_4
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method private showInfoDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgs"    # Ljava/lang/String;

    .prologue
    .line 481
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CLASS_ZERO_BODY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "USE_AS_WARNING_DIALOG"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 487
    .local v0, "smsDialogIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 488
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 115
    const-string v1, "Conversations"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "SmsReceiverService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmsReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 126
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v1, :cond_1

    .line 127
    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    .line 129
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "Conversations"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "SmsReceiverService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 155
    :cond_1
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 133
    const-string v1, "Conversations"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    if-eqz p1, :cond_1

    .line 135
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 143
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void

    .line 137
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": intent is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .locals 6

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getFirstQueuedMessage(Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 228
    .local v1, "msgUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 230
    :try_start_1
    new-instance v2, Lcom/android/mms/transaction/SmsMessageSender;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 231
    .local v2, "sender":Lcom/android/mms/transaction/SmsMessageSender;
    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    .end local v2    # "sender":Lcom/android/mms/transaction/SmsMessageSender;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v3, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 227
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    .end local v1    # "msgUri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 238
    .restart local v1    # "msgUri":Landroid/net/Uri;
    :cond_1
    :try_start_3
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->isOutboxEmpty(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    const-class v3, Lcom/android/mms/transaction/SmsSendQueuedMessagesReceiver;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->setComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
