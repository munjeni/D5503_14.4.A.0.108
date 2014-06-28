.class public Lcom/sonyericsson/conversations/ui/NoConfirmationSendService;
.super Landroid/app/Service;
.source "NoConfirmationSendService.java"


# static fields
.field public static final RESPOND_VIA_MESSAGE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field private static final TAG:Ljava/lang/String; = "Conversations/NoConfirmationSendService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 48
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 50
    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 52
    const/4 v1, 0x2

    .line 96
    :goto_0
    return v1

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 57
    const/4 v1, 0x2

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 60
    .local v8, "extras":Landroid/os/Bundle;
    if-nez v8, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 62
    const/4 v1, 0x2

    goto :goto_0

    .line 65
    :cond_2
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 68
    .local v9, "intentUri":Landroid/net/Uri;
    if-nez v9, :cond_3

    .line 69
    const-string v1, "Conversations/NoConfirmationSendService"

    const-string v11, "Called NoConfirmationSendService without recipients"

    invoke-static {v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 71
    const/4 v1, 0x2

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {v9}, Lcom/sonyericsson/conversations/model/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "recipients":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 77
    const/4 v1, 0x2

    goto :goto_0

    .line 79
    :cond_5
    const-string v1, ";"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "dests":[Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 84
    .local v4, "threadId":J
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 90
    .local v0, "smsMessageSender":Lcom/android/mms/transaction/SmsMessageSender;
    :try_start_0
    invoke-virtual {v0, v4, v5}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 96
    const/4 v1, 0x2

    goto :goto_0

    .line 91
    :catch_0
    move-exception v7

    .line 92
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "Conversations/NoConfirmationSendService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to send SMS message, threadId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
