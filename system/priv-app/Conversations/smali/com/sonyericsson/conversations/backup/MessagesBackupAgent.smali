.class public Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "MessagesBackupAgent.java"


# static fields
.field static final TAG:Ljava/lang/String; = "Conversations MessagesBackupAgent"

.field private static mRestoreIsOnGoing:Z


# instance fields
.field private mDatabaseWriter:Lcom/sonyericsson/conversations/backup/DatabaseWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->mRestoreIsOnGoing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->mDatabaseWriter:Lcom/sonyericsson/conversations/backup/DatabaseWriter;

    return-void
.end method

.method private backupSmsState(Landroid/app/backup/BackupDataOutput;Lcom/sonyericsson/conversations/backup/SmsStateManager;)V
    .locals 5
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "newStateFileManager"    # Lcom/sonyericsson/conversations/backup/SmsStateManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 346
    .local v1, "messageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 348
    const-string v3, "|"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "smsStateString":Ljava/lang/String;
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 357
    .local v0, "buffer":[B
    const-string v3, "Sms_State_Key"

    array-length v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 358
    array-length v3, v0

    invoke-virtual {p1, v0, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 361
    .end local v0    # "buffer":[B
    .end local v2    # "smsStateString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static declared-synchronized ismRestoreIsOnGoing()Z
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->mRestoreIsOnGoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setmRestoreIsOnGoing(Z)V
    .locals 2
    .param p0, "mRestoreIsOnGoing"    # Z

    .prologue
    .line 56
    const-class v0, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->mRestoreIsOnGoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private smsMessagesBackup(Landroid/app/backup/BackupDataOutput;Lcom/sonyericsson/conversations/backup/SmsStateManager;Lcom/sonyericsson/conversations/backup/SmsStateManager;)Z
    .locals 6
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "oldSmsStateManager"    # Lcom/sonyericsson/conversations/backup/SmsStateManager;
    .param p3, "newSmsStateManager"    # Lcom/sonyericsson/conversations/backup/SmsStateManager;

    .prologue
    .line 138
    :try_start_0
    new-instance v1, Lcom/sonyericsson/conversations/backup/MessagesReader;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/sonyericsson/conversations/backup/MessagesReader;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;)V

    .line 140
    .local v1, "messagesReader":Lcom/sonyericsson/conversations/backup/MessagesReader;
    invoke-virtual {v1, p1, p2, p3}, Lcom/sonyericsson/conversations/backup/MessagesReader;->acquireSmsList(Landroid/app/backup/BackupDataOutput;Lcom/sonyericsson/conversations/backup/SmsStateManager;Lcom/sonyericsson/conversations/backup/SmsStateManager;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "smsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/backup/SmsModel;>;"
    const-string v3, "KEY_SMS_"

    invoke-direct {p0, p1, p2, v3}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->wipeDeletedMessages(Landroid/app/backup/BackupDataOutput;Lcom/sonyericsson/conversations/backup/SmsStateManager;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->backupSmsMessages(Landroid/app/backup/BackupDataOutput;Ljava/util/ArrayList;)V

    .line 152
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->backupSmsState(Landroid/app/backup/BackupDataOutput;Lcom/sonyericsson/conversations/backup/SmsStateManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const/4 v3, 0x1

    .line 160
    .end local v1    # "messagesReader":Lcom/sonyericsson/conversations/backup/MessagesReader;
    .end local v2    # "smsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/backup/SmsModel;>;"
    :goto_0
    return v3

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Conversations MessagesBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException while backingup sms messages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private smsMessagesRestore(Landroid/app/backup/BackupDataInput;Lcom/sonyericsson/conversations/backup/SmsStateManager;)Z
    .locals 11
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "smsStateManager"    # Lcom/sonyericsson/conversations/backup/SmsStateManager;

    .prologue
    const/4 v7, 0x0

    .line 174
    const/4 v4, 0x0

    .line 178
    .local v4, "smsFOS":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Lcom/sonyericsson/conversations/backup/XMLBuilder;

    invoke-direct {v3}, Lcom/sonyericsson/conversations/backup/XMLBuilder;-><init>()V

    .line 180
    .local v3, "smsBuilder":Lcom/sonyericsson/conversations/backup/XMLBuilder;
    const-string v8, "SmsList"

    invoke-virtual {v3, v8}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 182
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "TempSmsFile"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v6, "smsLogFile":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    .end local v4    # "smsFOS":Ljava/io/FileOutputStream;
    .local v5, "smsFOS":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->getXMLDocument()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 190
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    .line 192
    .local v1, "dataSize":I
    if-lez v1, :cond_0

    .line 193
    new-array v0, v1, [B

    .line 195
    .local v0, "dataBuf":[B
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 197
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "KEY_SMS_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 198
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    .end local v0    # "dataBuf":[B
    .end local v1    # "dataSize":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 220
    .end local v3    # "smsBuilder":Lcom/sonyericsson/conversations/backup/XMLBuilder;
    .end local v5    # "smsFOS":Ljava/io/FileOutputStream;
    .end local v6    # "smsLogFile":Ljava/io/File;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "smsFOS":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string v8, "Conversations MessagesBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while restoring sms messages "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->closeOutputStream(Ljava/io/FileOutputStream;)V

    .line 225
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return v7

    .line 199
    .end local v4    # "smsFOS":Ljava/io/FileOutputStream;
    .restart local v0    # "dataBuf":[B
    .restart local v1    # "dataSize":I
    .restart local v3    # "smsBuilder":Lcom/sonyericsson/conversations/backup/XMLBuilder;
    .restart local v5    # "smsFOS":Ljava/io/FileOutputStream;
    .restart local v6    # "smsLogFile":Ljava/io/File;
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Sms_State_Key"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 200
    invoke-virtual {p2, v0}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->saveSmsStateForWriteNewState([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 222
    .end local v0    # "dataBuf":[B
    .end local v1    # "dataSize":I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v3    # "smsBuilder":Lcom/sonyericsson/conversations/backup/XMLBuilder;
    .end local v5    # "smsFOS":Ljava/io/FileOutputStream;
    .end local v6    # "smsLogFile":Ljava/io/File;
    .restart local v4    # "smsFOS":Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->closeOutputStream(Ljava/io/FileOutputStream;)V

    throw v7

    .line 202
    .end local v4    # "smsFOS":Ljava/io/FileOutputStream;
    .restart local v0    # "dataBuf":[B
    .restart local v1    # "dataSize":I
    .restart local v3    # "smsBuilder":Lcom/sonyericsson/conversations/backup/XMLBuilder;
    .restart local v5    # "smsFOS":Ljava/io/FileOutputStream;
    .restart local v6    # "smsLogFile":Ljava/io/File;
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 212
    .end local v0    # "dataBuf":[B
    .end local v1    # "dataSize":I
    :cond_3
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->clear()V

    .line 214
    const-string v8, "SmsList"

    invoke-virtual {v3, v8}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->getXMLDocument()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    const/4 v7, 0x1

    .line 222
    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->closeOutputStream(Ljava/io/FileOutputStream;)V

    move-object v4, v5

    .end local v5    # "smsFOS":Ljava/io/FileOutputStream;
    .restart local v4    # "smsFOS":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "smsBuilder":Lcom/sonyericsson/conversations/backup/XMLBuilder;
    .end local v6    # "smsLogFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    goto :goto_3

    .line 219
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private uploadBytes(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .locals 11
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x0

    .line 305
    array-length v5, p3

    int-to-double v5, v5

    const-wide/high16 v7, 0x4090000000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 308
    .local v3, "numberOfChunks":I
    array-length v1, p3

    .line 310
    .local v1, "bytesLength":I
    const/4 v4, 0x0

    .line 312
    .local v4, "start":I
    new-array v0, v10, [B

    .line 314
    .local v0, "buffer":[B
    invoke-virtual {p1, p2, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 317
    add-int/lit16 v5, v4, 0x400

    if-le v5, v1, :cond_0

    .line 318
    sub-int v5, v1, v4

    new-array v0, v5, [B

    .line 319
    sub-int v5, v1, v4

    invoke-static {p3, v4, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    :goto_1
    add-int/lit16 v4, v4, 0x400

    .line 324
    array-length v5, v0

    invoke-virtual {p1, v0, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {p3, v4, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 326
    :cond_1
    return-void
.end method

.method private wipeDeletedMessages(Landroid/app/backup/BackupDataOutput;Lcom/sonyericsson/conversations/backup/SmsStateManager;Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "oldSmsStateManager"    # Lcom/sonyericsson/conversations/backup/SmsStateManager;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->messageListSize()I

    move-result v3

    if-lez v3, :cond_1

    .line 380
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->getMessages()Ljava/util/List;

    move-result-object v0

    .line 383
    .local v0, "deletedMessagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 387
    .local v2, "keyValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    goto :goto_0

    .line 392
    .end local v0    # "deletedMessagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "keyValue":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public backupSmsMessages(Landroid/app/backup/BackupDataOutput;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataOutput;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/backup/SmsModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "smsMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/backup/SmsModel;>;"
    new-instance v3, Lcom/sonyericsson/conversations/backup/XMLBuilder;

    invoke-direct {v3}, Lcom/sonyericsson/conversations/backup/XMLBuilder;-><init>()V

    .line 246
    .local v3, "xmlBuilder":Lcom/sonyericsson/conversations/backup/XMLBuilder;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->clear()V

    .line 248
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/backup/SmsModel;

    .line 250
    .local v2, "sms":Lcom/sonyericsson/conversations/backup/SmsModel;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->generateSmsStateKey(Lcom/sonyericsson/conversations/backup/SmsModel;I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "keyString":Ljava/lang/String;
    const-string v4, "Sms"

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addStartingTag(Ljava/lang/String;)V

    .line 256
    const-string v4, "Address"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v4, "Date"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v4, "Protocol"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v4, "Read"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getRead()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v4, "Status"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v4, "Type"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v4, "ReplyPathPresent"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getPathPresent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v4, "Body"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v4, "ServiceCenter"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getServiceCenter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v4, "Locked"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getLocked()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "Seen"

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/backup/SmsModel;->getSeen()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v4, "Sms"

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->addClosingTag(Ljava/lang/String;)V

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_SMS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->getXMLDocument()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->uploadBytes(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 289
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/backup/XMLBuilder;->clear()V

    goto/16 :goto_0

    .line 291
    .end local v1    # "keyString":Ljava/lang/String;
    .end local v2    # "sms":Lcom/sonyericsson/conversations/backup/SmsModel;
    :cond_0
    return-void
.end method

.method public closeOutputStream(Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "fos"    # Ljava/io/FileOutputStream;

    .prologue
    .line 396
    if-eqz p1, :cond_0

    .line 397
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Conversations MessagesBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in closing Output Stream. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Lcom/sonyericsson/conversations/backup/SmsStateManager;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/backup/SmsStateManager;-><init>()V

    .line 84
    .local v1, "oldSmsStateManager":Lcom/sonyericsson/conversations/backup/SmsStateManager;
    new-instance v0, Lcom/sonyericsson/conversations/backup/SmsStateManager;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/backup/SmsStateManager;-><init>()V

    .line 86
    .local v0, "newSmsStateManager":Lcom/sonyericsson/conversations/backup/SmsStateManager;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->readOldSmsState(Landroid/os/ParcelFileDescriptor;)V

    .line 88
    invoke-direct {p0, p2, v1, v0}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->smsMessagesBackup(Landroid/app/backup/BackupDataOutput;Lcom/sonyericsson/conversations/backup/SmsStateManager;Lcom/sonyericsson/conversations/backup/SmsStateManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :cond_0
    invoke-virtual {v0, p3}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->writeNewSmsState(Landroid/os/ParcelFileDescriptor;)V

    .line 94
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/sonyericsson/conversations/backup/DatabaseWriter;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/backup/DatabaseWriter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->mDatabaseWriter:Lcom/sonyericsson/conversations/backup/DatabaseWriter;

    .line 67
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/sonyericsson/conversations/backup/SmsStateManager;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/backup/SmsStateManager;-><init>()V

    .line 111
    .local v0, "smsStateManager":Lcom/sonyericsson/conversations/backup/SmsStateManager;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->smsMessagesRestore(Landroid/app/backup/BackupDataInput;Lcom/sonyericsson/conversations/backup/SmsStateManager;)Z

    .line 113
    invoke-static {}, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->ismRestoreIsOnGoing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/conversations/backup/MessagesBackupAgent;->mDatabaseWriter:Lcom/sonyericsson/conversations/backup/DatabaseWriter;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    :cond_0
    invoke-virtual {v0, p3}, Lcom/sonyericsson/conversations/backup/SmsStateManager;->writeNewSmsState(Landroid/os/ParcelFileDescriptor;)V

    .line 118
    return-void
.end method
