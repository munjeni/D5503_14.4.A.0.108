.class Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotification;
.super Lcom/sonyericsson/conversations/notifications/MessageNotification;
.source "DeliveryFailedNotification.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/MessageNotification;-><init>(Landroid/content/Context;I)V

    .line 42
    return-void
.end method

.method private createAlertTicker(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "threadUri"    # Landroid/net/Uri;

    .prologue
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 78
    .local v2, "conversationName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v6, 0x7f07000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "messageText":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 82
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/sonyericsson/conversations/model/Conversation;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    .line 84
    .local v1, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    if-eqz v1, :cond_0

    .line 85
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .end local v1    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    :cond_0
    new-instance v0, Ljava/text/Bidi;

    const/4 v5, -0x2

    invoke-direct {v0, v3, v5}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 91
    .local v0, "bidi":Ljava/text/Bidi;
    if-eqz v2, :cond_4

    .line 93
    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    invoke-virtual {v0}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :goto_0
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 107
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 101
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v6, 0x7f070014

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected getNotification(Landroid/net/Uri;Z)Landroid/app/Notification;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isAlert"    # Z

    .prologue
    const/4 v5, 0x1

    .line 46
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-string v4, "delivery_failed_count"

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->updateIndicatorInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    iget v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    if-lez v3, :cond_2

    .line 49
    const v1, 0x7f020039

    .line 52
    .local v1, "icon":I
    iget v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    if-le v3, v5, :cond_1

    .line 53
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v4, 0x7f070009

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "contentText":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->createMessageNotification(ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    .line 64
    .local v2, "n":Landroid/app/Notification;
    if-eqz p2, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/notifications/DeliveryFailedNotification;->createAlertTicker(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 66
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getNotificationFailSoundUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 71
    .end local v0    # "contentText":Ljava/lang/String;
    .end local v1    # "icon":I
    .end local v2    # "n":Landroid/app/Notification;
    :cond_0
    :goto_1
    return-object v2

    .line 58
    .restart local v1    # "icon":I
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentText":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v0    # "contentText":Ljava/lang/String;
    .end local v1    # "icon":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
