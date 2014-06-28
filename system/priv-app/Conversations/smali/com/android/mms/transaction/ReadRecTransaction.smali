.class public Lcom/android/mms/transaction/ReadRecTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "ReadRecTransaction.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ReadRecTransaction"


# instance fields
.field private final mReadReportURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 82
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    .line 83
    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 87
    return-void
.end method

.method private getReadReportDataVersion1_0(Lcom/google/android/mms/pdu/ReadRecInd;)[B
    .locals 15
    .param p1, "readRecInd"    # Lcom/google/android/mms/pdu/ReadRecInd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v7, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 180
    .local v7, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    const/16 v11, 0x81

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 181
    const/16 v11, 0x81

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 182
    const-string v11, "auto"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 183
    const/16 v11, 0x80

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/GenericPdu;->setMessageType(I)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/ReadRecInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 185
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/GenericPdu;->setMmsVersion(I)V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long v0, v11, v13

    .line 187
    .local v0, "date":J
    invoke-virtual {v7, v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 188
    const/16 v11, 0x81

    invoke-virtual {v7, v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    .line 189
    new-instance v9, Lcom/android/mms/model/TextModel;

    iget-object v11, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-string v12, "text/plain"

    const-string v13, "text_0.txt"

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 191
    .local v9, "textModel":Lcom/android/mms/model/TextModel;
    const-string v3, "EEEE, MMMM d"

    .line 193
    .local v3, "datePattern":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 194
    const-string v10, "kk:mm"

    .line 198
    .local v10, "timePattern":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 201
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Your MMS was read "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "messageBody":Ljava/lang/String;
    invoke-virtual {v9, v5}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v11, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    .line 204
    .local v8, "ssm":Lcom/android/mms/model/SlideshowModel;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v4, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v11, Lcom/android/mms/model/SlideModel;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v4}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v8, v11}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 208
    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 209
    .local v6, "pduBody":Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v7, v6}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 211
    new-instance v11, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v12, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v7}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v11

    return-object v11

    .line 196
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v5    # "messageBody":Ljava/lang/String;
    .end local v6    # "pduBody":Lcom/google/android/mms/pdu/PduBody;
    .end local v8    # "ssm":Lcom/android/mms/model/SlideshowModel;
    .end local v10    # "timePattern":Ljava/lang/String;
    :cond_0
    const-string v10, "h:mm a"

    .restart local v10    # "timePattern":Ljava/lang/String;
    goto :goto_0
.end method

.method private getReadReportDataVersion1_1(Lcom/google/android/mms/pdu/ReadRecInd;)[B
    .locals 2
    .param p1, "readRecInd"    # Lcom/google/android/mms/pdu/ReadRecInd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/GenericPdu;->setMmsVersion(I)V

    .line 163
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 217
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 218
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->notifySpecificObserver(Lcom/android/mms/transaction/Observer;)V

    .line 219
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x3

    return v0
.end method

.method public process()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 95
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v0

    .line 99
    .local v0, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    const-string v5, "ReadRecTransaction"

    const-string v6, "MMSC is Empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 141
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 143
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 145
    return-void

    .line 104
    :cond_1
    const/4 v1, 0x0

    .line 106
    .local v1, "postingData":[B
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 108
    .local v2, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    .line 109
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/ReadRecTransaction;->getReadReportDataVersion1_0(Lcom/google/android/mms/pdu/ReadRecInd;)[B

    move-result-object v1

    .line 113
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    .line 115
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    sget-object v6, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 116
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 117
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 120
    const-string v4, "m_type=135"

    .line 121
    .local v4, "where":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 141
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 111
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "where":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/ReadRecTransaction;->getReadReportDataVersion1_1(Lcom/google/android/mms/pdu/ReadRecInd;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 139
    .end local v1    # "postingData":[B
    .end local v2    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 140
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 141
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 139
    throw v5

    .line 122
    :catch_0
    move-exception v5

    .line 139
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 141
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v5

    .line 139
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 141
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 130
    :catch_2
    move-exception v5

    .line 139
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 141
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 134
    :catch_3
    move-exception v5

    .line 139
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 141
    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method
