.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;
.super Ljava/lang/Thread;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkMessagesAsReadThread"
.end annotation


# instance fields
.field private messagesToMarkAsRead:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p2, "messagesToMarkAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Message;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 620
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->messagesToMarkAsRead:Ljava/util/ArrayList;

    .line 621
    return-void
.end method

.method private markMmsAsRead(Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 13
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$300(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 662
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "pref_key_mms_read_reports"

    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pref_key_delivery_reports"

    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box = 1 AND m_type = 132 AND read = 0 AND rr = 128 AND thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$400(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$500(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$600(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v6, "m_id"

    aput-object v6, v3, v11

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 677
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 679
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 681
    .local v9, "messageId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 686
    .local v7, "address":Ljava/lang/String;
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 689
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$700(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v0, v7, v9, v1}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    .end local v7    # "address":Ljava/lang/String;
    .end local v9    # "messageId":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 698
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p1, v12}, Lcom/sonyericsson/conversations/model/MmsMessage;->setRead(Z)V

    .line 699
    return-void

    .line 693
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 632
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->messagesToMarkAsRead:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Message;

    .line 636
    .local v1, "message":Lcom/sonyericsson/conversations/model/Message;
    instance-of v2, v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->isStored()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->isRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 638
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->markMmsAsRead(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    goto :goto_1

    .line 639
    .restart local v1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->isStored()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->isRead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/model/Message;->setRead(Z)V

    goto :goto_1

    .line 646
    .end local v1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$100(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    .line 647
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$200(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V

    .line 648
    return-void

    .line 633
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
