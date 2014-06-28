.class public Lcom/android/mms/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final METHOD_SEND_TEXT_MESSAGE_WITH_PRIORITY:Ljava/lang/String; = "sendTextMessageWithPriority"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field private mMessagePriority:I

.field private final mMessageText:Ljava/lang/String;

.field private final mNumberOfDests:I

.field private mParentUri:Landroid/net/Uri;

.field private mRequestDeliveryReport:Z

.field private mSendUris:[Landroid/net/Uri;

.field private final mServiceCenter:Ljava/lang/String;

.field private final mThreadId:J

.field private mTimestamp:J

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "SmsMessageSender"

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromUriEx(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v1

    .line 106
    .local v1, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "messageText":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "messageText":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 109
    iput v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 110
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 112
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getThreadId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 113
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getServiceCenter()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 114
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getOriginPrority()I

    move-result v2

    iput v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessagePriority:I

    .line 115
    iput-object p2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    .line 116
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsMessageSender;->init()V

    .line 120
    return-void

    .line 118
    :cond_1
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Illegal URI"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dests"    # [Ljava/lang/String;
    .param p3, "msgText"    # Ljava/lang/String;
    .param p4, "threadId"    # J

    .prologue
    .line 83
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dests"    # [Ljava/lang/String;
    .param p3, "msgText"    # Ljava/lang/String;
    .param p4, "threadId"    # J
    .param p6, "priority"    # I

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 89
    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "msgText":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 90
    array-length v1, p2

    iput v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 91
    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 94
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v0

    .line 95
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_1

    .end local p4    # "threadId":J
    :goto_0
    iput-wide p4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 97
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/model/SmsMessage;->getOutgoingServiceCenter(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    .line 99
    iput p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessagePriority:I

    .line 100
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsMessageSender;->init()V

    .line 101
    return-void

    .line 95
    .restart local p4    # "threadId":J
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide p4

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 270
    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v1, v1, [Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    .line 272
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 274
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "pref_key_delivery_reports"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    .line 277
    return-void
.end method

.method private prepareParentMessage()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 285
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    add-int/lit8 v0, v0, -0x1

    if-ge v13, v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v0, v0, v13

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "addresses":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    const-wide/16 v9, -0x1

    iget v11, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessagePriority:I

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/conversations/model/SmsMessage;->addMessage(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;JZJJI)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v2    # "addresses":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-void

    .line 296
    :catch_0
    move-exception v12

    .line 297
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method

.method private prepareRecipientMessage(I)V
    .locals 15
    .param p1, "recipientIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 304
    iget-object v14, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUri:Landroid/net/Uri;

    .line 306
    .local v14, "uri":Landroid/net/Uri;
    if-nez v14, :cond_3

    .line 309
    :try_start_0
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v13

    .line 310
    .local v13, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v13, v0, v1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    .line 311
    .local v7, "threadId":J
    :goto_0
    const-wide/16 v9, -0x1

    .line 313
    .local v9, "parentId":J
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    iget-boolean v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    iget v11, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessagePriority:I

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/conversations/model/SmsMessage;->addMessage(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;JZJJI)Landroid/net/Uri;

    move-result-object v14

    .line 323
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/transaction/SmsSendQueuedMessagesReceiver;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->setComponmentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v7    # "threadId":J
    .end local v9    # "parentId":J
    .end local v13    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    :goto_1
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    aput-object v14, v0, p1

    .line 336
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_1
    return-void

    .line 310
    .restart local v13    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .restart local v14    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    iget-wide v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 326
    .end local v13    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    :catch_0
    move-exception v12

    .line 327
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 330
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    iget-boolean v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    iget v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessagePriority:I

    move-object v1, v14

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/conversations/model/SmsMessage;->updateMessage(Landroid/content/ContentResolver;Landroid/net/Uri;JZI)V

    goto :goto_1
.end method

.method private sendSingleMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 10
    .param p1, "smsManager"    # Landroid/telephony/SmsManager;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "serviceCenter"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "priority"    # I

    .prologue
    .line 239
    if-lez p7, :cond_2

    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isPriorityAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    const/4 v7, 0x0

    .line 244
    .local v7, "methodInvoked":Z
    :try_start_0
    const-class v0, Landroid/telephony/SmsManager;

    const-string v1, "sendTextMessageWithPriority"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 248
    .local v8, "sendTextMessageWithPriority":Ljava/lang/reflect/Method;
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p6, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v8, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    const/4 v7, 0x1

    .line 258
    if-nez v7, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object v4, p4

    move-object v5, p5

    .line 261
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 267
    .end local v7    # "methodInvoked":Z
    .end local v8    # "sendTextMessageWithPriority":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 251
    .restart local v7    # "methodInvoked":Z
    :catch_0
    move-exception v6

    .line 252
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    sget-object v0, Lcom/android/mms/transaction/SmsMessageSender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextMessageWithPriority is not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    if-nez v7, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object v4, p4

    move-object v5, p5

    .line 261
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 253
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v6

    .line 254
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    sget-object v0, Lcom/android/mms/transaction/SmsMessageSender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextMessageWithPriority is not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    if-nez v7, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object v4, p4

    move-object v5, p5

    .line 261
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 255
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v6

    .line 256
    .local v6, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    sget-object v0, Lcom/android/mms/transaction/SmsMessageSender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextMessageWithPriority is not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    if-nez v7, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object v4, p4

    move-object v5, p5

    .line 261
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 258
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v0

    move-object v9, v0

    if-nez v7, :cond_1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object v4, p4

    move-object v5, p5

    .line 261
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :cond_1
    throw v9

    .end local v7    # "methodInvoked":Z
    :cond_2
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p6

    move-object v4, p4

    move-object v5, p5

    .line 265
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public prepareForSendMessage()Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsMessageSender;->prepareParentMessage()V

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v0, v1, :cond_0

    .line 126
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsMessageSender;->prepareRecipientMessage(I)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mParentUri:Landroid/net/Uri;

    :goto_1
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_1
.end method

.method public sendMessage(J)Z
    .locals 12
    .param p1, "token"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 133
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v0, :cond_1

    .line 135
    :cond_0
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Null message body or dest."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 145
    .local v2, "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsMessageSender;->prepareParentMessage()V

    .line 147
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v9, v0, :cond_3

    .line 150
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCharacterConversionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v0, v11, v11}, Lcom/sonyericsson/conversations/util/TextUtil;->convertForCostSaving(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "textToSend":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v10}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 164
    .local v5, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v9}, Lcom/android/mms/transaction/SmsMessageSender;->prepareRecipientMessage(I)V

    .line 166
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v0, v9

    iget-object v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestDeliveryReport:Z

    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendUris:[Landroid/net/Uri;

    aget-object v7, v0, v9

    iget v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessagePriority:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/mms/transaction/SmsMessageSender;->sendSubmitPdus(Landroid/content/Context;Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/net/Uri;I)V

    .line 147
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 159
    .end local v5    # "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "textToSend":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .restart local v10    # "textToSend":Ljava/lang/String;
    goto :goto_1

    .line 170
    .end local v10    # "textToSend":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method protected sendSubmitPdus(Landroid/content/Context;Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/net/Uri;I)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smsManager"    # Landroid/telephony/SmsManager;
    .param p3, "dest"    # Ljava/lang/String;
    .param p4, "serviceCenter"    # Ljava/lang/String;
    .param p6, "requestDeliveryReport"    # Z
    .param p7, "uri"    # Landroid/net/Uri;
    .param p8, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/SmsManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/net/Uri;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p5, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 176
    .local v18, "partsCount":I
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v7, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v6, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 180
    if-eqz p6, :cond_0

    add-int/lit8 v2, v18, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    .line 184
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    const-class v5, Lcom/android/mms/transaction/MessageStatusReceiver;

    move-object/from16 v0, p7

    move-object/from16 v1, p1

    invoke-direct {v3, v4, v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :goto_1
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.MESSAGE_SENT"

    const-class v5, Lcom/android/mms/transaction/PrivilegedSmsSentReceiver;

    move-object/from16 v0, p7

    move-object/from16 v1, p1

    invoke-direct {v3, v4, v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 188
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 197
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 222
    :cond_2
    :goto_2
    return-void

    .line 200
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 201
    .local v14, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v12, 0x0

    .line 202
    .local v12, "sentIntent":Landroid/app/PendingIntent;
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v13, 0x0

    .local v13, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_4
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v15, p8

    .line 204
    invoke-direct/range {v8 .. v15}, Lcom/android/mms/transaction/SmsMessageSender;->sendSingleMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 207
    .end local v12    # "sentIntent":Landroid/app/PendingIntent;
    .end local v13    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v14    # "text":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 215
    .local v20, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .line 217
    .local v19, "pi":Landroid/app/PendingIntent;
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 218
    :catch_1
    move-exception v2

    goto :goto_5

    .line 201
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "pi":Landroid/app/PendingIntent;
    .end local v20    # "re":Ljava/lang/RuntimeException;
    .restart local v14    # "text":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    move-object v12, v2

    goto :goto_3

    .line 202
    .restart local v12    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v13, v2

    goto :goto_4
.end method
