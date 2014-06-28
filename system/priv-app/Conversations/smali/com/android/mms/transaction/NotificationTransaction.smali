.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationTransaction"


# instance fields
.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "ind"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 113
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsNotification(Lcom/google/android/mms/pdu/GenericPdu;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 120
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 121
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v1, "NotificationTransaction"

    const-string v2, "Failed to save NotificationInd in constructor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 88
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 102
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v1, "NotificationTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load NotificationInd from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private sendNotifyRespInd(I)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 258
    .local v0, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    .line 259
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 264
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 265
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->notifySpecificObserver(Lcom/android/mms/transaction/Observer;)V

    .line 266
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public isObsoletedBy(Lcom/android/mms/transaction/RetrieveTransaction;)Z
    .locals 3
    .param p1, "rt"    # Lcom/android/mms/transaction/RetrieveTransaction;

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 281
    .local v0, "cl":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v2, p1, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    .line 133
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    .line 134
    .local v3, "downloadManager":Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v3}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    .line 135
    .local v0, "autoDownload":Z
    const/4 v5, 0x0

    .line 142
    .local v5, "mmscInvalid":Z
    :try_start_0
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 143
    const-string v12, "NotificationTransaction"

    const-string v13, "MMSC is Empty"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v13, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 231
    if-nez v0, :cond_0

    .line 232
    if-nez v5, :cond_12

    .line 235
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 241
    :cond_0
    :goto_0
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    .line 242
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 243
    const-string v12, "NotificationTransaction"

    const-string v13, "NotificationTransaction failed."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 247
    return-void

    .line 150
    :cond_2
    const/16 v9, 0x83

    .line 151
    .local v9, "status":I
    if-nez v0, :cond_4

    .line 152
    :try_start_1
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    .line 153
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v12, v13}, Lcom/sonyericsson/conversations/model/TransactionInvokeProviderWrapper;->deletePendingMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 154
    iget-object v12, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v13, 0x80

    invoke-virtual {v3, v12, v13}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 155
    invoke-direct {p0, v9}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v13, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 231
    if-nez v0, :cond_3

    .line 232
    if-nez v5, :cond_13

    .line 235
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 241
    :cond_3
    :goto_2
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    .line 242
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 243
    const-string v12, "NotificationTransaction"

    const-string v13, "NotificationTransaction failed."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    :cond_4
    :try_start_2
    iget-object v12, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v12

    const/16 v13, 0x82

    if-ne v12, v13, :cond_5

    .line 163
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v12, v13, v14}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateReadStatus(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 167
    :cond_5
    iget-object v12, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v13, 0x81

    invoke-virtual {v3, v12, v13}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 168
    iget-object v12, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v1

    .line 169
    .local v1, "clBytes":[B
    if-nez v1, :cond_7

    .line 170
    new-instance v12, Lcom/google/android/mms/MmsException;

    const-string v13, "Content-Location may not be null."

    invoke-direct {v12, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .end local v1    # "clBytes":[B
    .end local v9    # "status":I
    :catch_0
    move-exception v10

    .line 227
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v12, "NotificationTransaction"

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    const/4 v5, 0x1

    .line 230
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v13, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 231
    if-nez v0, :cond_6

    .line 232
    if-nez v5, :cond_11

    .line 235
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 241
    :cond_6
    :goto_3
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    .line 242
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 243
    const-string v12, "NotificationTransaction"

    const-string v13, "NotificationTransaction failed."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 173
    .end local v10    # "t":Ljava/lang/Throwable;
    .restart local v1    # "clBytes":[B
    .restart local v9    # "status":I
    :cond_7
    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    .local v2, "contentLocation":Ljava/lang/String;
    const/4 v7, 0x0

    .line 182
    .local v7, "retrieveConfData":[B
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/Transaction;->getPdu(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .line 187
    :goto_4
    if-eqz v7, :cond_9

    .line 188
    :try_start_6
    new-instance v12, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v12, v7}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    .line 189
    .local v6, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v12

    const/16 v13, 0x84

    if-eq v12, v13, :cond_e

    .line 190
    :cond_8
    const-string v12, "NotificationTransaction"

    const-string v13, "Invalid M-RETRIEVE.CONF PDU."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 192
    const/16 v9, 0x84

    .line 213
    .end local v6    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_9
    :goto_5
    packed-switch v9, :pswitch_data_0

    .line 225
    :cond_a
    :goto_6
    :pswitch_0
    invoke-direct {p0, v9}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 230
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v13, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 231
    if-nez v0, :cond_b

    .line 232
    if-nez v5, :cond_14

    .line 235
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 241
    :cond_b
    :goto_7
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    .line 242
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 243
    const-string v12, "NotificationTransaction"

    const-string v13, "NotificationTransaction failed."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 183
    :catch_1
    move-exception v4

    .line 184
    .local v4, "e":Ljava/io/IOException;
    :try_start_7
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 230
    .end local v1    # "clBytes":[B
    .end local v2    # "contentLocation":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "retrieveConfData":[B
    .end local v9    # "status":I
    :catchall_0
    move-exception v12

    iget-object v13, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v14, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 231
    if-nez v0, :cond_c

    .line 232
    if-nez v5, :cond_10

    .line 235
    iget-object v13, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 241
    :cond_c
    :goto_8
    iget-object v13, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v13}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_d

    .line 242
    iget-object v13, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 243
    const-string v13, "NotificationTransaction"

    const-string v14, "NotificationTransaction failed."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_d
    invoke-virtual {p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 230
    throw v12

    .line 195
    .restart local v1    # "clBytes":[B
    .restart local v2    # "contentLocation":Ljava/lang/String;
    .restart local v6    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "retrieveConfData":[B
    .restart local v9    # "status":I
    :cond_e
    :try_start_8
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v8

    .line 196
    .local v8, "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    iget-object v13, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseSCTimestamp()Z

    move-result v12

    if-nez v12, :cond_f

    const/4 v12, 0x1

    :goto_9
    invoke-virtual {v8, v6, v13, v12}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsRetrievedContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v11

    .line 198
    .local v11, "uri":Landroid/net/Uri;
    iput-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 204
    const/16 v9, 0x81

    goto :goto_5

    .line 196
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_f
    const/4 v12, 0x0

    goto :goto_9

    .line 215
    .end local v6    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v8    # "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :pswitch_1
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto :goto_6

    .line 219
    :pswitch_2
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v12

    if-nez v12, :cond_a

    .line 220
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6

    .line 238
    .end local v1    # "clBytes":[B
    .end local v2    # "contentLocation":Ljava/lang/String;
    .end local v7    # "retrieveConfData":[B
    .end local v9    # "status":I
    :cond_10
    iget-object v13, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto :goto_8

    .restart local v10    # "t":Ljava/lang/Throwable;
    :cond_11
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_3

    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_12
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_0

    .restart local v9    # "status":I
    :cond_13
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_2

    .restart local v1    # "clBytes":[B
    .restart local v2    # "contentLocation":Ljava/lang/String;
    .restart local v7    # "retrieveConfData":[B
    :cond_14
    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_7

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
