.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SendTransaction"


# instance fields
.field private final mSendReqURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 73
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 74
    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 78
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 187
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 188
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->notifySpecificObserver(Lcom/android/mms/transaction/Observer;)V

    .line 189
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    .line 87
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method

.method public run()V
    .locals 25

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v12

    .line 93
    .local v12, "rateCtlr":Lcom/android/mms/util/RateController;
    invoke-virtual {v12}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual {v12}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v21

    if-nez v21, :cond_1

    .line 94
    const-string v21, "SendTransaction"

    const-string v22, "Sending rate limit surpassed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 178
    const-string v21, "SendTransaction"

    const-string v22, "Delivery failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v12    # "rateCtlr":Lcom/android/mms/util/RateController;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 182
    return-void

    .line 99
    .restart local v12    # "rateCtlr":Lcom/android/mms/util/RateController;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 100
    const-string v21, "SendTransaction"

    const-string v22, "MMSC is Empty"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 178
    const-string v21, "SendTransaction"

    const-string v22, "Delivery failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v11

    .line 106
    .local v11, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v16

    check-cast v16, Lcom/google/android/mms/pdu/SendReq;

    .line 109
    .local v16, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/GenericPdu;->setMmsVersion(I)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v6, v21, v23

    .line 113
    .local v6, "date":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 116
    .local v9, "mmsId":J
    invoke-static {v9, v10}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMmsMessage(J)Landroid/net/Uri;

    move-result-object v20

    .line 117
    .local v20, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v21

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v6

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/model/ModelCache;->modifySlideshowTag(Landroid/net/Uri;J)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6, v7}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateDateValue(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 124
    .local v18, "tokenKey":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v21

    new-instance v23, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[B)[B

    move-result-object v15

    .line 126
    .local v15, "response":[B
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 128
    new-instance v21, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/pdu/SendConf;

    .line 129
    .local v4, "conf":Lcom/google/android/mms/pdu/SendConf;
    if-nez v4, :cond_3

    .line 130
    const-string v21, "SendTransaction"

    const-string v22, "No M-Send.conf received."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v21, Ljava/lang/NullPointerException;

    const-string v22, "No M-Send.conf"

    invoke-direct/range {v21 .. v22}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .end local v4    # "conf":Lcom/google/android/mms/pdu/SendConf;
    .end local v6    # "date":J
    .end local v9    # "mmsId":J
    .end local v11    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v12    # "rateCtlr":Lcom/android/mms/util/RateController;
    .end local v15    # "response":[B
    .end local v16    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .end local v18    # "tokenKey":J
    .end local v20    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v17

    .line 173
    .local v17, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v21, "SendTransaction"

    invoke-static/range {v17 .. v17}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 178
    const-string v21, "SendTransaction"

    const-string v22, "Delivery failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 138
    .end local v17    # "t":Ljava/lang/Throwable;
    .restart local v4    # "conf":Lcom/google/android/mms/pdu/SendConf;
    .restart local v6    # "date":J
    .restart local v9    # "mmsId":J
    .restart local v11    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .restart local v12    # "rateCtlr":Lcom/android/mms/util/RateController;
    .restart local v15    # "response":[B
    .restart local v16    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .restart local v18    # "tokenKey":J
    .restart local v20    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v13

    .line 139
    .local v13, "reqId":[B
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v5

    .line 140
    .local v5, "confId":[B
    invoke-static {v13, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-nez v21, :cond_4

    .line 141
    const-string v21, "SendTransaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Inconsistent Transaction-ID: req="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", conf="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 178
    const-string v21, "SendTransaction"

    const-string v22, "Delivery failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 149
    :cond_4
    :try_start_5
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v14

    .line 151
    .local v14, "respStatus":I
    const/16 v21, 0x80

    move/from16 v0, v21

    if-eq v14, v0, :cond_7

    .line 152
    const/16 v21, 0x84

    move/from16 v0, v21

    if-eq v14, v0, :cond_5

    const/16 v21, 0x82

    move/from16 v0, v21

    if-eq v14, v0, :cond_5

    const/16 v21, 0x83

    move/from16 v0, v21

    if-eq v14, v0, :cond_5

    const/16 v21, 0x87

    move/from16 v0, v21

    if-eq v14, v0, :cond_5

    const/16 v21, 0x88

    move/from16 v0, v21

    if-ne v14, v0, :cond_6

    .line 157
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/transaction/Transaction;->mPermanentError:Z

    .line 159
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v14, v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateResponseStatusAndMessageId(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    .line 160
    const-string v21, "SendTransaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Server returned an error code: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 178
    const-string v21, "SendTransaction"

    const-string v22, "Delivery failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    :cond_7
    :try_start_6
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "messageId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14, v8}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateResponseStatusAndMessageId(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v21, v0

    sget-object v22, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v20

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 178
    const-string v21, "SendTransaction"

    const-string v22, "Delivery failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    .end local v4    # "conf":Lcom/google/android/mms/pdu/SendConf;
    .end local v5    # "confId":[B
    .end local v6    # "date":J
    .end local v8    # "messageId":Ljava/lang/String;
    .end local v9    # "mmsId":J
    .end local v11    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v12    # "rateCtlr":Lcom/android/mms/util/RateController;
    .end local v13    # "reqId":[B
    .end local v14    # "respStatus":I
    .end local v15    # "response":[B
    .end local v16    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .end local v18    # "tokenKey":J
    .end local v20    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 178
    const-string v22, "SendTransaction"

    const-string v23, "Delivery failed."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 175
    throw v21
.end method
