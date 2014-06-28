.class public Lcom/android/mms/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final DEFAULT_EXPIRY_TIME:J = 0x93a80L

.field private static final DEFAULT_MESSAGE_CLASS:Ljava/lang/String; = "personal"

.field private static final DEFAULT_PRIORITY:I = 0x81

.field private static final DEFAULT_READ_REPORT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "MmsMessageSender"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsPrepared:Z

.field private mMessagePriority:I

.field private final mMessageUri:Landroid/net/Uri;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Landroid/net/Uri;
    .param p3, "threadId"    # J

    .prologue
    .line 71
    const/16 v5, 0x81

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;JI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Landroid/net/Uri;
    .param p3, "threadId"    # J
    .param p5, "priority"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 77
    iput-wide p3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mThreadId:J

    .line 78
    iput p5, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessagePriority:I

    .line 80
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    .line 168
    const/4 v1, 0x1

    new-array v5, v1, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 169
    .local v5, "sender":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v1

    .line 173
    :try_start_0
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 180
    .local v0, "readRec":Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/ReadRecInd;->setDate(J)V

    .line 182
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v7

    .line 183
    .local v7, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v0, v1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_READREC_TRANSACTION"

    const/4 v3, 0x0

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .end local v0    # "readRec":Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v7    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v6

    .line 187
    .local v6, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v1, "MmsMessageSender"

    const-string v2, "Invalide header value"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    .end local v6    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_1
    move-exception v6

    .line 189
    .local v6, "e":Lcom/google/android/mms/MmsException;
    const-string v1, "MmsMessageSender"

    const-string v2, "Persist message failed"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 9
    .param p1, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    const/4 v8, 0x0

    const/16 v5, 0x81

    .line 140
    iget-object v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_key_mms_expiry"

    const-wide/32 v6, 0x93a80

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 147
    iget v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessagePriority:I

    if-eqz v3, :cond_0

    .line 148
    iget v3, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessagePriority:I

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    .line 154
    :goto_0
    const-string v3, "pref_key_delivery_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 156
    .local v0, "dr":Z
    if-eqz v0, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 159
    if-eqz v0, :cond_3

    .line 160
    const-string v3, "pref_key_mms_read_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 161
    .local v2, "rr":Z
    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 165
    .end local v2    # "rr":Z
    :goto_3
    return-void

    .line 150
    .end local v0    # "dr":Z
    :cond_0
    const-string v3, "pref_key_mms_priority"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    goto :goto_0

    .restart local v0    # "dr":Z
    :cond_1
    move v3, v5

    .line 156
    goto :goto_1

    .restart local v2    # "rr":Z
    :cond_2
    move v4, v5

    .line 161
    goto :goto_2

    .line 163
    .end local v2    # "rr":Z
    :cond_3
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    goto :goto_3
.end method


# virtual methods
.method public prepareForSendMessage()Landroid/net/Uri;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    .line 86
    iget-boolean v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mIsPrepared:Z

    if-nez v8, :cond_1

    .line 88
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v4

    .line 89
    .local v4, "p":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    .line 91
    .local v5, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v8

    const/16 v9, 0x80

    if-eq v8, v9, :cond_0

    .line 92
    new-instance v8, Lcom/google/android/mms/MmsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    move-object v6, v5

    .line 95
    check-cast v6, Lcom/google/android/mms/pdu/SendReq;

    .line 98
    .local v6, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 101
    const-string v8, "personal"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long v0, v8, v10

    .line 105
    .local v0, "date":J
    invoke-virtual {v6, v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 108
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 109
    .local v2, "messageId":J
    invoke-static {v2, v3}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMmsMessage(J)Landroid/net/Uri;

    move-result-object v7

    .line 110
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v8

    mul-long v9, v0, v10

    invoke-virtual {v8, v7, v9, v10}, Lcom/sonyericsson/conversations/model/ModelCache;->modifySlideshowTag(Landroid/net/Uri;J)V

    .line 112
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v8, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 115
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8, v9}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 117
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/mms/transaction/MmsMessageSender;->mThreadId:J

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sonyericsson/conversations/model/MmsMessage;->addRecipientThreads(Landroid/content/Context;Landroid/net/Uri;[Lcom/google/android/mms/pdu/EncodedStringValue;J)V

    .line 118
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mIsPrepared:Z

    .line 121
    .end local v0    # "date":J
    .end local v2    # "messageId":J
    .end local v4    # "p":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v5    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    return-object v8
.end method

.method public sendMessage(J)Z
    .locals 2
    .param p1, "token"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsMessageSender;->prepareForSendMessage()Landroid/net/Uri;

    .line 126
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/mms/transaction/MmsMessageSender;->sendSendReqPdu(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected sendSendReqPdu(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageuri"    # Landroid/net/Uri;
    .param p3, "token"    # J

    .prologue
    .line 133
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SEND_TRANSACTION"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    return-void
.end method
