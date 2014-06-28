.class Lcom/sonyericsson/conversations/backup/MessagesReader;
.super Ljava/lang/Object;
.source "MessagesReader.java"


# static fields
.field private static final SMS_PROJECTION:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "Conversations MessagesReader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessagesBackupAgent:Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "seen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/backup/MessagesReader;->SMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messagesBackupAgent"    # Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/conversations/backup/MessagesReader;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/sonyericsson/conversations/backup/MessagesReader;->mMessagesBackupAgent:Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;

    .line 65
    return-void
.end method


# virtual methods
.method public acquireSmsList(Landroid/app/backup/BackupDataOutput;Lcom/sonyericsson/conversations/backup/SmsStateManager;Lcom/sonyericsson/conversations/backup/SmsStateManager;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "oldSmsStateManager"    # Lcom/sonyericsson/conversations/backup/SmsStateManager;
    .param p3, "newSmsStateManager"    # Lcom/sonyericsson/conversations/backup/SmsStateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataOutput;",
            "Lcom/sonyericsson/conversations/backup/SmsStateManager;",
            "Lcom/sonyericsson/conversations/backup/SmsStateManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/backup/SmsModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v10, "smsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/backup/SmsModel;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/MessagesReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/conversations/backup/MessagesReader;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 135
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 142
    .local v9, "runtime":Ljava/lang/Runtime;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/sonyericsson/conversations/backup/MessagesReader;->acquireSmsModel(Landroid/database/Cursor;I)Lcom/sonyericsson/conversations/backup/SmsModel;

    move-result-object v11

    .line 143
    .local v11, "smsModel":Lcom/sonyericsson/conversations/backup/SmsModel;
    const/4 v0, 0x0

    invoke-virtual {p3, v11, v0}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->updateSmsStateForBackupAndRestore(Lcom/sonyericsson/conversations/backup/SmsModel;I)V

    .line 146
    const/4 v0, 0x0

    invoke-static {v11, v0}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->generateSmsStateKey(Lcom/sonyericsson/conversations/backup/SmsModel;I)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "keyString":Ljava/lang/String;
    invoke-virtual {p2, v8}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->hasMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {p2, v8}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->removeMessage(Ljava/lang/String;)V

    .line 175
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 180
    .end local v8    # "keyString":Ljava/lang/String;
    .end local v9    # "runtime":Ljava/lang/Runtime;
    .end local v11    # "smsModel":Lcom/sonyericsson/conversations/backup/SmsModel;
    :cond_2
    if-eqz v6, :cond_3

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_3
    :goto_1
    return-object v10

    .line 160
    .restart local v8    # "keyString":Ljava/lang/String;
    .restart local v9    # "runtime":Ljava/lang/Runtime;
    .restart local v11    # "smsModel":Lcom/sonyericsson/conversations/backup/SmsModel;
    :cond_4
    :try_start_1
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/backup/SmsModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/backup/SmsModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 165
    :cond_5
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v9}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 171
    const-string v0, "Conversations MessagesReader"

    const-string v1, "Free memory less than 1M. Backing up messages "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/MessagesReader;->mMessagesBackupAgent:Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;

    invoke-virtual {v0, p1, v10}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->backupSmsMessages(Landroid/app/backup/BackupDataOutput;Ljava/util/ArrayList;)V

    .line 173
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v8    # "keyString":Ljava/lang/String;
    .end local v9    # "runtime":Ljava/lang/Runtime;
    .end local v11    # "smsModel":Lcom/sonyericsson/conversations/backup/SmsModel;
    :catch_0
    move-exception v7

    .line 178
    .local v7, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v0, "Conversations MessagesReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS Field data cannot be read from :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    if-eqz v6, :cond_3

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 180
    .end local v7    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public acquireSmsModel(Landroid/database/Cursor;I)Lcom/sonyericsson/conversations/backup/SmsModel;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "flag"    # I

    .prologue
    .line 76
    new-instance v0, Lcom/sonyericsson/conversations/backup/SmsModel;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/backup/SmsModel;-><init>()V

    .line 78
    .local v0, "sms":Lcom/sonyericsson/conversations/backup/SmsModel;
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setDate(Ljava/lang/String;)V

    .line 79
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setAddress(Ljava/lang/String;)V

    .line 81
    if-nez p2, :cond_0

    .line 83
    const-string v1, "protocol"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setProtocol(Ljava/lang/String;)V

    .line 86
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setRead(Ljava/lang/String;)V

    .line 88
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setStatus(Ljava/lang/String;)V

    .line 90
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setType(Ljava/lang/String;)V

    .line 92
    const-string v1, "reply_path_present"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setPathPresent(Ljava/lang/String;)V

    .line 95
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setBody(Ljava/lang/String;)V

    .line 97
    const-string v1, "service_center"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setServiceCenter(Ljava/lang/String;)V

    .line 100
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setLocked(Ljava/lang/String;)V

    .line 102
    const-string v1, "seen"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/backup/SmsModel;->setSeen(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-object v0
.end method

.method public getCurrentDBMessagesList(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/backup/SmsStateManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mDBSmsStateManager"    # Lcom/sonyericsson/conversations/backup/SmsStateManager;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "date"

    aput-object v4, v2, v1

    const-string v1, "address"

    aput-object v1, v2, v5

    const-string v5, "date ASC"

    move-object v1, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/sonyericsson/conversations/backup/MessagesReader;->acquireSmsModel(Landroid/database/Cursor;I)Lcom/sonyericsson/conversations/backup/SmsModel;

    move-result-object v7

    .line 208
    .local v7, "smsModel":Lcom/sonyericsson/conversations/backup/SmsModel;
    const/4 v0, 0x1

    invoke-virtual {p3, v7, v0}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->updateSmsStateForBackupAndRestore(Lcom/sonyericsson/conversations/backup/SmsModel;I)V

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 215
    .end local v7    # "smsModel":Lcom/sonyericsson/conversations/backup/SmsModel;
    :cond_1
    if-eqz v6, :cond_2

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_2
    return-void

    .line 215
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
