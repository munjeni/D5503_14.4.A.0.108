.class abstract Lcom/sonyericsson/conversations/notifications/MessageNotification;
.super Lcom/sonyericsson/conversations/notifications/Notification;
.source "MessageNotification.java"


# static fields
.field private static final UNICODE_LRM:Ljava/lang/String; = "\u200e"


# instance fields
.field protected mNrOfMessages:I

.field protected mNrOfThreads:I

.field protected mNrOfUri:Landroid/net/Uri;

.field protected mThreadId:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/notifications/Notification;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method

.method private createClickIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "clickIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "unReadMessageUri"

    iget-object v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "unReadMessageThreads"

    iget v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfThreads:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 133
    return-object v0
.end method


# virtual methods
.method protected createMessageNotification(ILjava/lang/String;)Landroid/app/Notification;
    .locals 6
    .param p1, "icon"    # I
    .param p2, "contentText"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f070014

    .line 46
    iget v2, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfThreads:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 47
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "contentTitle":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfUri:Landroid/net/Uri;

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->createClickIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/sonyericsson/conversations/notifications/Notification;->createDefaultNotification(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 51
    .end local v0    # "contentTitle":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mThreadId:J

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    .line 52
    .local v1, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    if-eqz v1, :cond_2

    .line 53
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "contentTitle":Ljava/lang/String;
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_1
    :goto_1
    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mThreadId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfUri:Landroid/net/Uri;

    goto :goto_0

    .line 60
    .end local v0    # "contentTitle":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentTitle":Ljava/lang/String;
    goto :goto_1
.end method

.method protected createMessageNotificationBuilder(ILjava/lang/String;)Landroid/app/Notification$Builder;
    .locals 6
    .param p1, "icon"    # I
    .param p2, "contentText"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f070014

    .line 72
    iget v2, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfThreads:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "contentTitle":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfUri:Landroid/net/Uri;

    .line 87
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->createClickIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/sonyericsson/conversations/notifications/Notification;->createDefaultNotificationBuilder(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification$Builder;

    move-result-object v2

    return-object v2

    .line 77
    .end local v0    # "contentTitle":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mThreadId:J

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    .line 78
    .local v1, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/notifications/MessageNotification;->getNotificationTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0    # "contentTitle":Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mThreadId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfUri:Landroid/net/Uri;

    goto :goto_0

    .line 81
    .end local v0    # "contentTitle":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentTitle":Ljava/lang/String;
    goto :goto_1
.end method

.method protected getNotificationTitle(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "participiants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/conversations/notifications/Notification;->mContext:Landroid/content/Context;

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 104
    .restart local v0    # "title":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "+"

    const-string v2, "+\u200e"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateIndicatorInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indicatorColumn"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 148
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->queryIndicatorInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 152
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfThreads:I

    .line 155
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    iput v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfMessages:I

    .line 158
    iget v3, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mNrOfThreads:I

    if-ne v3, v5, :cond_4

    .line 159
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    iput-wide v1, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_1
    return-void

    .line 155
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    .line 159
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_1

    .line 162
    :cond_4
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sonyericsson/conversations/notifications/MessageNotification;->mThreadId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 166
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method
