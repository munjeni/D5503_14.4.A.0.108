.class public Lcom/android/mms/transaction/RetrieveTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "RetrieveTransaction"


# instance fields
.field private final mContentLocation:Ljava/lang/String;

.field private final mManualRequest:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "manualRequest"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 75
    const-string v0, "content://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 77
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/sonyericsson/conversations/model/TransactionInvokeProviderWrapper;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 87
    iput-boolean p5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mManualRequest:Z

    .line 90
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 91
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initializing from X-Mms-Content-Location is abandoned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 4
    .param p1, "rc"    # Lcom/google/android/mms/pdu/RetrieveConf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v1

    .line 168
    .local v1, "tranId":[B
    if-eqz v1, :cond_0

    .line 171
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .line 174
    .local v0, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    .line 176
    .end local v0    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 181
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 182
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->notifySpecificObserver(Lcom/android/mms/transaction/Observer;)V

    .line 183
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public isManualRequest()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mManualRequest:Z

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 105
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 154
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 155
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 156
    const-string v5, "RetrieveTransaction"

    const-string v6, "Retrieval failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 160
    return-void

    .line 110
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/16 v8, 0x81

    invoke-virtual {v5, v7, v8}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 114
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/mms/transaction/Transaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v0

    .line 117
    .local v0, "resp":[B
    new-instance v5, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v5, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 118
    .local v1, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    if-nez v1, :cond_2

    .line 119
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v7, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v5, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v0    # "resp":[B
    .end local v1    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :catch_0
    move-exception v3

    .line 151
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "RetrieveTransaction"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 154
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 155
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 156
    const-string v5, "RetrieveTransaction"

    const-string v6, "Retrieval failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "resp":[B
    .restart local v1    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 126
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 141
    :goto_1
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v5, v7}, Lcom/sonyericsson/conversations/model/TransactionInvokeProviderWrapper;->deleteByUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 149
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 154
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 155
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 156
    const-string v5, "RetrieveTransaction"

    const-string v6, "Retrieval failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 129
    :cond_3
    :try_start_4
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v2

    .line 130
    .local v2, "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    iget-object v7, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseSCTimestamp()Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v2, v1, v7, v5}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsRetrievedContent(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v4

    .line 133
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 134
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 137
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-static {v5, v4, v7}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 153
    .end local v0    # "resp":[B
    .end local v1    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v2    # "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v4    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v5

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v7

    if-eq v7, v6, :cond_4

    .line 154
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 155
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 156
    const-string v6, "RetrieveTransaction"

    const-string v7, "Retrieval failed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 153
    throw v5

    .line 130
    .restart local v0    # "resp":[B
    .restart local v1    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .restart local v2    # "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method
