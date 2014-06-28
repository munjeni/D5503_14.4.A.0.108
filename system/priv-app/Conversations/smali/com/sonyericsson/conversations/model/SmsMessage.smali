.class public Lcom/sonyericsson/conversations/model/SmsMessage;
.super Lcom/sonyericsson/conversations/model/Message;
.source "SmsMessage.java"


# static fields
.field private static final COLUMN_REPLY_PATH_PRESENT:I = 0x0

.field private static final COLUMN_SERVICE_CENTER:I = 0x1

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmsMessage"


# instance fields
.field public bodyText:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mOriginPriority:I

.field private mServiceCenter:Ljava/lang/String;

.field private mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/model/SmsMessage;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mThreadId:J

    .line 50
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mAddress:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mServiceCenter:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mOriginPriority:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->type:I

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mThreadId:J

    .line 50
    iput-object v4, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mAddress:Ljava/lang/String;

    .line 52
    iput-object v4, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mServiceCenter:Ljava/lang/String;

    .line 54
    iput v3, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mOriginPriority:I

    .line 61
    iput v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->type:I

    .line 62
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnDate:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->date:J

    .line 64
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsType:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    .line 88
    :goto_0
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsBody:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    .line 89
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsPriority:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->setRawPriority(I)V

    .line 90
    return-void

    .line 66
    :pswitch_0
    iput v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 69
    :pswitch_1
    iput v3, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 72
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 75
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 78
    :pswitch_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 81
    :pswitch_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static addExtraData(Lcom/sonyericsson/conversations/model/SmsMessage;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)V
    .locals 2
    .param p0, "message"    # Lcom/sonyericsson/conversations/model/SmsMessage;
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;

    .prologue
    .line 197
    iget v0, p2, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsThreadId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->setThreadId(J)V

    .line 198
    iget v0, p2, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsAddress:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->setAddress(Ljava/lang/String;)V

    .line 199
    iget v0, p2, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnSmsServiceCenter:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->setServiceCenter(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;JZJJI)Landroid/net/Uri;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "deliveryReport"    # Z
    .param p7, "threadId"    # J
    .param p9, "parentId"    # J
    .param p11, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 697
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v2, "date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 699
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    const-string v2, "body"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v2, "thread_id"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 702
    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const-string v2, "semc_message_priority"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    if-eqz p6, :cond_0

    .line 707
    const-string v2, "status"

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p9, v2

    if-eqz v2, :cond_1

    .line 711
    const-string v2, "parent_id"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 714
    :cond_1
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 715
    .local v0, "messageUri":Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 716
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "returned Uri is null - could not add message"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 718
    :cond_2
    return-object v0
.end method

.method public static createDraft(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/SmsMessage;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    .line 118
    return-object v0
.end method

.method public static extractContentValues(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    const/4 v6, 0x0

    .line 578
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 580
    .local v5, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isCphsMwiMessage()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 581
    const-string v7, "address"

    const v8, 0x7f0700cc

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->somcSctsColumnExists(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 591
    const-string v7, "somc_scts"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 597
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseSCTimestamp()Z

    move-result v7

    if-nez v7, :cond_5

    .line 598
    const-string v7, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    :goto_1
    const-string v7, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    const-string v7, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 609
    const-string v7, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_1
    const-string v7, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    const-string v6, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v0, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 615
    .local v0, "baseMessage":Lcom/android/internal/telephony/SmsMessageBase;
    instance-of v6, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v6, :cond_3

    .line 616
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getPriorityOfCdmaSmsMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    .line 617
    .local v2, "priority":I
    const-string v6, "semc_message_priority"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    .end local v2    # "priority":I
    :cond_3
    return-object v5

    .line 583
    .end local v0    # "baseMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "originatingAddress":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatSmsOriginalAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    const-string v7, "address"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    .end local v1    # "originatingAddress":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    .line 601
    .local v3, "timestamp":J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_6

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 604
    :cond_6
    const-string v7, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method public static fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;

    .prologue
    .line 122
    new-instance v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)V

    return-object v0
.end method

.method public static fromKey(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # J

    .prologue
    .line 126
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v1

    return-object v1
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/conversations/model/MessageProjection;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 138
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageProjection;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/conversations/model/MessageProjection;-><init>(Landroid/database/Cursor;I)V

    invoke-static {p0, v6, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/SmsMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 143
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_1
    return-object v7

    .line 143
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static fromUriEx(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 178
    const/4 v7, 0x0

    .line 179
    .local v7, "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/conversations/model/MessageProjection;->SMS_PROJECTION_EX:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 182
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 184
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v8, Lcom/sonyericsson/conversations/model/MessageProjection;

    const/4 v0, 0x1

    invoke-direct {v8, v6, v0}, Lcom/sonyericsson/conversations/model/MessageProjection;-><init>(Landroid/database/Cursor;I)V

    .line 186
    .local v8, "mp":Lcom/sonyericsson/conversations/model/MessageProjection;
    invoke-static {p0, v6, v8}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v7

    .line 187
    invoke-static {v7, v6, v8}, Lcom/sonyericsson/conversations/model/SmsMessage;->addExtraData(Lcom/sonyericsson/conversations/model/SmsMessage;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v8    # "mp":Lcom/sonyericsson/conversations/model/MessageProjection;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_1
    return-object v7

    .line 190
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 3
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .local v0, "body":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 684
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFirstQueuedMessage(Landroid/content/Context;)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 363
    const/4 v9, 0x0

    .line 365
    .local v9, "msgUri":Landroid/net/Uri;
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 366
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 368
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v0

    .local v3, "sendProjection":[Ljava/lang/String;
    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    .line 371
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 374
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 376
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 378
    .local v8, "msgId":I
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v8

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 381
    .end local v8    # "msgId":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_1
    return-object v9

    .line 381
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getMessageIdByUri(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 402
    const/4 v8, -0x1

    .line 403
    .local v8, "messageId":I
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v1

    .line 404
    .local v3, "ID_PROJECTION":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 407
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 411
    :cond_0
    if-eqz v7, :cond_1

    .line 412
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 415
    :cond_1
    return v8

    .line 411
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 412
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_2
    throw v0
.end method

.method public static getOutgoingServiceCenter(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 342
    const/4 v7, 0x0

    .line 345
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/conversations/model/SmsMessage;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 349
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 356
    :cond_0
    if-eqz v7, :cond_1

    .line 357
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    .line 354
    :cond_2
    :goto_0
    return-object v0

    .line 353
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_4

    .line 354
    .local v8, "replyPathPresent":Z
    :goto_1
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 356
    :goto_2
    if-eqz v7, :cond_2

    .line 357
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "replyPathPresent":Z
    :cond_4
    move v8, v10

    .line 353
    goto :goto_1

    .restart local v8    # "replyPathPresent":Z
    :cond_5
    move-object v0, v9

    .line 354
    goto :goto_2

    .line 356
    .end local v8    # "replyPathPresent":Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 357
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_6
    throw v0
.end method

.method private static getPriorityOfCdmaSmsMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 7
    .param p0, "baseSmsMessage"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 631
    move-object v4, p0

    check-cast v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 633
    .local v4, "wrappedMessageInstance":Lcom/android/internal/telephony/cdma/SmsMessage;
    const-string v1, "mBearerData"

    .line 636
    .local v1, "bearerDataDeclaredField":Ljava/lang/String;
    :try_start_0
    const-class v5, Lcom/android/internal/telephony/cdma/SmsMessage;

    const-string v6, "mBearerData"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 638
    .local v2, "bearerDataField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 640
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 641
    .local v0, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 648
    .end local v0    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v2    # "bearerDataField":Ljava/lang/reflect/Field;
    :goto_0
    return v5

    .line 642
    .restart local v2    # "bearerDataField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 643
    .local v3, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    const-string v5, "SmsMessage"

    const-string v6, "mBearerData cannot be accessed."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    .line 648
    .end local v2    # "bearerDataField":Ljava/lang/reflect/Field;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 645
    :catch_1
    move-exception v3

    .line 646
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string v5, "SmsMessage"

    const-string v6, "mBearerData does not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Landroid/telephony/SmsMessage;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v11

    .line 524
    .local v11, "smsTimestamp":J
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->somcSctsColumnExists(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-gtz v1, :cond_2

    .line 525
    :cond_0
    const/4 v1, 0x0

    .line 569
    :cond_1
    :goto_0
    return v1

    .line 528
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 529
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "body"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "somc_scts"

    aput-object v5, v2, v1

    const/4 v1, 0x2

    const-string v5, "address"

    aput-object v5, v2, v1

    .line 530
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 531
    .local v10, "smsScts":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 532
    .local v9, "smsOa":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, "smsBody":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 536
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v9, v4, v1

    .line 537
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v3, "somc_scts = ? AND address = ?"

    .line 544
    .local v3, "selection":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    .line 546
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 547
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 548
    const-string v1, "Conversations"

    const/4 v5, 0x3

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    const-string v1, "SmsMessage"

    const-string v5, "SCTS, OA and message body of incoming message is duplicate, discarding message!"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    :cond_3
    const/4 v1, 0x1

    .line 564
    if-eqz v6, :cond_1

    .line 565
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 539
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v9, v4, v1

    const/4 v1, 0x2

    aput-object v8, v4, v1

    .line 540
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    const-string v3, "somc_scts = ? AND address = ? AND body = ?"

    .restart local v3    # "selection":Ljava/lang/String;
    goto :goto_1

    .line 554
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    :try_start_1
    const-string v1, "Conversations"

    const/4 v5, 0x3

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 555
    const-string v1, "SmsMessage"

    const-string v5, "SCTS, OA and message body of incoming message is unique."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    :cond_6
    const/4 v1, 0x0

    .line 564
    if-eqz v6, :cond_1

    goto :goto_2

    .line 559
    :catch_0
    move-exception v7

    .line 560
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v1, "Conversations"

    const/4 v5, 0x6

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 561
    const-string v1, "SmsMessage"

    const-string v5, "Database query failed!"

    invoke-static {v1, v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    :cond_7
    if-eqz v6, :cond_8

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 564
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_9

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_9
    throw v1
.end method

.method public static isOutboxEmpty(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 388
    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    .line 389
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 390
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 393
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 395
    :goto_0
    if-eqz v7, :cond_0

    .line 396
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 396
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_2
    throw v0
.end method

.method public static moveOutboxMessagesToQueuedBox(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 740
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 742
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 747
    return-void
.end method

.method public static replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 446
    const/4 v2, 0x0

    aget-object v19, p1, v2

    .line 447
    .local v19, "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->extractContentValues(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v11

    .line 449
    .local v11, "values":Landroid/content/ContentValues;
    const-string v2, "body"

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 453
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 454
    .local v17, "originatingAddress":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsMessage;->isCphsMwiMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    const v2, 0x7f0700cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 460
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v18

    .line 462
    .local v18, "protocolIdentifier":I
    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v2

    const/4 v2, 0x1

    const-string v4, "address"

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "protocol"

    aput-object v4, v5, v2

    .line 468
    .local v5, "replaceProjection":[Ljava/lang/String;
    const-string v6, "address = ? AND protocol = ?"

    .line 471
    .local v6, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v17, v7, v2

    const/4 v2, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    .line 475
    .local v7, "selectionArgs":[Ljava/lang/String;
    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 478
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 480
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 482
    .local v15, "messageId":J
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 485
    .local v10, "messageUri":Landroid/net/Uri;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 493
    .end local v10    # "messageUri":Landroid/net/Uri;
    .end local v15    # "messageId":J
    :goto_1
    return-object v10

    .line 457
    .end local v5    # "replaceProjection":[Ljava/lang/String;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v18    # "protocolIdentifier":I
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v17

    goto :goto_0

    .line 490
    .restart local v5    # "replaceProjection":[Ljava/lang/String;
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "protocolIdentifier":I
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 493
    :cond_2
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_1
.end method

.method private static somcSctsColumnExists(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 659
    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "somc_scts"

    aput-object v1, v2, v9

    .line 660
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 661
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 665
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 672
    if-eqz v6, :cond_0

    .line 673
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v1, v8

    .line 676
    :goto_0
    return v1

    .line 667
    :catch_0
    move-exception v7

    .line 668
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "Conversations"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    const-string v1, "SmsMessage"

    const-string v3, "Database query failed, probably using an old database without the somc_scts column."

    invoke-static {v1, v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    :cond_1
    if-eqz v6, :cond_2

    .line 673
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v9

    .line 676
    goto :goto_0

    .line 672
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 673
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 672
    :cond_3
    throw v1
.end method

.method public static storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v3, 0x0

    .line 497
    aget-object v2, p1, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/model/SmsMessage;->isDuplicateMessage(Landroid/content/Context;Landroid/telephony/SmsMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    const/4 v2, 0x0

    .line 504
    :goto_0
    return-object v2

    .line 501
    :cond_0
    aget-object v2, p1, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/model/SmsMessage;->extractContentValues(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v1

    .line 502
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "body"

    invoke-static {p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 504
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v2, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static updateMessage(Landroid/content/ContentResolver;Landroid/net/Uri;JZI)V
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "timestamp"    # J
    .param p4, "requestDeliveryReport"    # Z
    .param p5, "priority"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 724
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 725
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 726
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    const-string v1, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 728
    const-string v1, "semc_message_priority"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    if-eqz p4, :cond_0

    .line 731
    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    :goto_0
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 737
    return-void

    .line 733
    :cond_0
    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateReceivedMessageStatus(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateUri"    # Landroid/net/Uri;
    .param p2, "status"    # I
    .param p3, "deliveryStatus"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 419
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 420
    .local v3, "contentValues":Landroid/content/ContentValues;
    const-string v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    if-ne p3, v6, :cond_1

    .line 423
    const-string v0, "delivery_status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    return-void

    .line 425
    :cond_1
    if-ne p3, v2, :cond_2

    .line 426
    const-string v0, "delivery_status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 427
    :cond_2
    if-ne p3, v5, :cond_0

    .line 428
    const-string v0, "delivery_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 218
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v10, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 223
    .local v6, "address":Ljava/lang/String;
    new-array v2, v11, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    .line 224
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 227
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 228
    :cond_0
    const-string v0, "SmsMessage"

    const-string v1, "invalid cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    if-eqz v7, :cond_1

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 234
    const/4 v7, 0x0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v3, 0x7f07002e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getDirection()I

    move-result v0

    if-nez v0, :cond_6

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :goto_1
    if-eqz v6, :cond_2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v8

    .line 260
    .local v8, "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 261
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->date:J

    invoke-virtual {v8, v3, v4, v11}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getDirection()I

    move-result v0

    if-ne v11, v0, :cond_4

    .line 269
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->date:J

    invoke-virtual {v8, v3, v4, v11}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    :cond_4
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v9, ""

    .line 281
    .local v9, "priStr":Ljava/lang/String;
    iget v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    packed-switch v0, :pswitch_data_0

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 292
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    .end local v8    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .end local v9    # "priStr":Ljava/lang/String;
    :cond_5
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 249
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 283
    .restart local v8    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .restart local v9    # "priStr":Ljava/lang/String;
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 285
    goto :goto_2

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getKey()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mId:J

    return-wide v0
.end method

.method public getOriginPrority()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mOriginPriority:I

    return v0
.end method

.method public getRawPriority()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 305
    iget v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    if-nez v1, :cond_1

    .line 306
    const/4 v0, 0x2

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    iget v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mThreadId:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 205
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mUri:Landroid/net/Uri;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mAddress:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setRawPriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .prologue
    const/4 v1, 0x1

    .line 316
    iput p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mOriginPriority:I

    .line 317
    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 319
    :cond_0
    iput v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    .line 326
    :goto_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 322
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    goto :goto_0

    .line 324
    :cond_3
    iput v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    goto :goto_0
.end method

.method public setRead(Z)V
    .locals 4
    .param p1, "read"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 102
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mRead:Z

    .line 106
    return-void
.end method

.method public setServiceCenter(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceCenter"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mServiceCenter:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setThreadId(J)V
    .locals 0
    .param p1, "threadId"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mThreadId:J

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    return-object v0
.end method
