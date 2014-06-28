.class Lcom/sonyericsson/conversations/notifications/DownloadFailedNotification;
.super Lcom/sonyericsson/conversations/notifications/MessageNotification;
.source "DownloadFailedNotification.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/MessageNotification;-><init>(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method private createAlertTicker(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 79
    .local v2, "conversationName":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v8, 0x7f07000c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "messageText":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 83
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/sonyericsson/conversations/model/Message;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v5

    .line 84
    .local v5, "threadId":J
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    .line 86
    .local v1, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    if-eqz v1, :cond_0

    .line 87
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .end local v1    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    .end local v5    # "threadId":J
    :cond_0
    new-instance v0, Ljava/text/Bidi;

    const/4 v7, -0x2

    invoke-direct {v0, v3, v7}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 93
    .local v0, "bidi":Ljava/text/Bidi;
    if-eqz v2, :cond_4

    .line 95
    const-string v7, "+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    invoke-virtual {v0}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 98
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :goto_0
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 109
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 103
    :cond_4
    iget-object v7, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v8, 0x7f070014

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected getNotification(Landroid/net/Uri;Z)Landroid/app/Notification;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isAlert"    # Z

    .prologue
    const/4 v5, 0x1

    .line 47
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-string v4, "download_failed_count"

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->updateIndicatorInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iget v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    if-lez v3, :cond_2

    .line 50
    const v1, 0x7f02003a

    .line 53
    .local v1, "icon":I
    iget v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    if-le v3, v5, :cond_1

    .line 54
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v4, 0x7f07000b

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "contentText":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->createMessageNotification(ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    .line 65
    .local v2, "n":Landroid/app/Notification;
    if-eqz p2, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/DownloadFailedNotification;->createAlertTicker(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 67
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getNotificationFailSoundUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 72
    .end local v0    # "contentText":Ljava/lang/String;
    .end local v1    # "icon":I
    .end local v2    # "n":Landroid/app/Notification;
    :cond_0
    :goto_1
    return-object v2

    .line 59
    .restart local v1    # "icon":I
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentText":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v0    # "contentText":Ljava/lang/String;
    .end local v1    # "icon":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
