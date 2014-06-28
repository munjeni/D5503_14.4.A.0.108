.class Lcom/sonyericsson/conversations/backup/SmsStateManager;
.super Ljava/lang/Object;
.source "SmsStateManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Conversations SmsStateManager"


# instance fields
.field private mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    return-void
.end method

.method public static generateSmsStateKey(Lcom/sonyericsson/conversations/backup/SmsModel;I)Ljava/lang/String;
    .locals 10
    .param p0, "smsModel"    # Lcom/sonyericsson/conversations/backup/SmsModel;
    .param p1, "flag"    # I

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "keyString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/backup/SmsModel;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "dateString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 236
    .local v0, "addressString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/backup/SmsModel;->getAddress()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 237
    const-string v0, " "

    .line 242
    :goto_0
    if-nez p1, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/backup/SmsModel;->getType()Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "typeString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/backup/SmsModel;->getRead()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "readString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/backup/SmsModel;->getSeen()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "seenString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/backup/SmsModel;->getStatus()Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "statusString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/backup/SmsModel;->getLocked()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "lockedString":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Group"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .end local v3    # "lockedString":Ljava/lang/String;
    .end local v4    # "readString":Ljava/lang/String;
    .end local v5    # "seenString":Ljava/lang/String;
    .end local v6    # "statusString":Ljava/lang/String;
    .end local v7    # "typeString":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/backup/SmsModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    .restart local v3    # "lockedString":Ljava/lang/String;
    .restart local v4    # "readString":Ljava/lang/String;
    .restart local v5    # "seenString":Ljava/lang/String;
    .restart local v6    # "statusString":Ljava/lang/String;
    .restart local v7    # "typeString":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 260
    .end local v3    # "lockedString":Ljava/lang/String;
    .end local v4    # "readString":Ljava/lang/String;
    .end local v5    # "seenString":Ljava/lang/String;
    .end local v6    # "statusString":Ljava/lang/String;
    .end local v7    # "typeString":Ljava/lang/String;
    :cond_2
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Group"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 263
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private parseSmsStateKey([B)V
    .locals 7
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 280
    .local v5, "smsStateString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 283
    const-string v6, "\\|"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "messagesKeyArray":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 288
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "messagesKeyArray":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public hasMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public messageListSize()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readOldSmsState(Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v4, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 116
    const/4 v3, 0x0

    .line 118
    .local v3, "oldStateFileInputStream":Ljava/io/FileInputStream;
    if-eqz p1, :cond_0

    .line 120
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "oldStateFileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 123
    .restart local v3    # "oldStateFileInputStream":Ljava/io/FileInputStream;
    :cond_0
    const/4 v1, 0x0

    .line 129
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 131
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v2, v4

    .line 134
    .local v2, "fileSize":I
    new-array v0, v2, [B

    .line 136
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 138
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->parseSmsStateKey([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v0    # "buffer":[B
    .end local v2    # "fileSize":I
    :cond_1
    if-eqz v3, :cond_2

    .line 148
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 150
    :cond_2
    if-eqz v1, :cond_3

    .line 151
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 154
    :cond_3
    return-void

    .line 147
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 148
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 150
    :cond_4
    if-eqz v1, :cond_5

    .line 151
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_5
    throw v4
.end method

.method public removeMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public saveSmsStateForWriteNewState([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 208
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->parseSmsStateKey([B)V

    .line 210
    return-void
.end method

.method public updateSmsStateForBackupAndRestore(Lcom/sonyericsson/conversations/backup/SmsModel;I)V
    .locals 2
    .param p1, "smsModel"    # Lcom/sonyericsson/conversations/backup/SmsModel;
    .param p2, "flag"    # I

    .prologue
    .line 220
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->generateSmsStateKey(Lcom/sonyericsson/conversations/backup/SmsModel;I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "keyString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/SmsStateManager;->mMessagesList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public writeNewSmsState(Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 172
    .local v2, "newStateStream":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "messageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 176
    const-string v5, "|"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "smsStateString":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 179
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v2    # "newStateStream":Ljava/io/DataOutputStream;
    .local v3, "newStateStream":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 189
    .end local v0    # "buffer":[B
    .end local v3    # "newStateStream":Ljava/io/DataOutputStream;
    .end local v4    # "smsStateString":Ljava/lang/String;
    .restart local v2    # "newStateStream":Ljava/io/DataOutputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 193
    :cond_1
    return-void

    .line 189
    .end local v1    # "messageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    :goto_0
    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    :cond_2
    throw v5

    .line 189
    .end local v2    # "newStateStream":Ljava/io/DataOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "messageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "newStateStream":Ljava/io/DataOutputStream;
    .restart local v4    # "smsStateString":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "newStateStream":Ljava/io/DataOutputStream;
    .restart local v2    # "newStateStream":Ljava/io/DataOutputStream;
    goto :goto_0
.end method
