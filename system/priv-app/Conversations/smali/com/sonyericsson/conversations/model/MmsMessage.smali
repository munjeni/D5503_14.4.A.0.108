.class public Lcom/sonyericsson/conversations/model/MmsMessage;
.super Lcom/sonyericsson/conversations/model/Message;
.source "MmsMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsMessage"


# instance fields
.field private mBriefSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mMessageType:I

.field mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSubject:Ljava/lang/String;

.field private mSubjectIsFixed:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->type:I

    .line 142
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)V

    .line 61
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    .line 63
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    .line 74
    const/4 v4, 0x1

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->type:I

    .line 75
    iget v4, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnDate:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    .line 77
    iget v4, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsMessageBox:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 121
    const/4 v4, -0x1

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    .line 125
    :goto_0
    iget v4, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsMessageType:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    .line 126
    iget v4, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsSubject:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsSubjectCharset:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/util/TextUtil;->decodeRawString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    .line 129
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/Composer;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    .line 135
    :goto_1
    iget v4, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsPriority:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/model/MmsMessage;->setRawPriority(I)V

    .line 136
    return-void

    .line 79
    :pswitch_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto :goto_0

    .line 82
    :pswitch_1
    const/4 v4, 0x1

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto :goto_0

    .line 86
    :pswitch_2
    iget v4, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mProjectionType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 88
    :try_start_0
    invoke-static {p1}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService(Landroid/content/Context;)Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/proxy/ProxyService;->getSettingsSecureProxy()Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;

    move-result-object v3

    .line 89
    .local v3, "proxy":Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;
    invoke-interface {v3}, Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;->getMobileData()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "mobileData":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 94
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v2    # "mobileData":Ljava/lang/String;
    .end local v3    # "proxy":Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v4, 0x5

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto :goto_0

    .line 97
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "mobileData":Ljava/lang/String;
    .restart local v3    # "proxy":Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;
    :cond_1
    :try_start_1
    iget v4, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMmsErrorType:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 99
    .local v1, "error":I
    const/16 v4, 0xa

    if-lt v1, v4, :cond_2

    .line 100
    const/4 v4, 0x4

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto :goto_0

    .line 101
    :cond_2
    const/4 v4, 0x1

    if-lt v1, v4, :cond_3

    .line 102
    const/4 v4, 0x5

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto :goto_0

    .line 104
    :cond_3
    const/4 v4, 0x2

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    .end local v1    # "error":I
    .end local v2    # "mobileData":Ljava/lang/String;
    .end local v3    # "proxy":Lcom/sonymobile/conversations/proxy/ISettingsSecureProxy;
    :cond_4
    const/4 v4, -0x1

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    .line 118
    :pswitch_3
    const/4 v4, 0x3

    iput v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    .line 132
    :cond_5
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    goto :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static addRecipientThreads(Landroid/content/Context;Landroid/net/Uri;[Lcom/google/android/mms/pdu/EncodedStringValue;J)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "encodedRecipients"    # [Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p3, "threadId"    # J

    .prologue
    .line 702
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 703
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 705
    .local v10, "messageId":J
    invoke-static {v10, v11}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMessage(J)Landroid/net/Uri;

    move-result-object v2

    .line 710
    .local v2, "uri":Landroid/net/Uri;
    const-wide/16 v12, 0x0

    .line 711
    .local v12, "parentThreadId":J
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 712
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 714
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 715
    const-string v3, "parent_thread_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 717
    .local v14, "parentThreadIdIndex":I
    :cond_0
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v12, v3

    .line 718
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-nez v3, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 721
    .end local v14    # "parentThreadIdIndex":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 725
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 727
    new-instance v8, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v8, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 730
    .local v8, "cv":Landroid/content/ContentValues;
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-eqz v3, :cond_3

    .line 731
    const-string v3, "thread_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 735
    :goto_0
    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 738
    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 739
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-eqz v3, :cond_4

    .line 740
    const-string v3, "parent_thread_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 745
    :goto_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v9, v3, :cond_5

    .line 746
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v15

    .line 747
    .local v15, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    aget-object v3, p2, v9

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-interface {v15, v0, v3}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v16

    .line 748
    .local v16, "recipientThreadId":J
    const-string v3, "thread_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 749
    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 745
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 721
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v9    # "i":I
    .end local v15    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .end local v16    # "recipientThreadId":J
    :catchall_0
    move-exception v3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v3

    .line 733
    .restart local v8    # "cv":Landroid/content/ContentValues;
    :cond_3
    const-string v3, "thread_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 742
    :cond_4
    const-string v3, "parent_thread_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 752
    :cond_5
    return-void
.end method

.method public static createDraft(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/Message;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-static {p0}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->createDraft(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createDraft(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Lcom/sonyericsson/conversations/model/Message;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 224
    new-instance v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/MmsMessage;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    .line 227
    iput-object p1, v0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 229
    return-object v0
.end method

.method public static findThreadIdAndMessageId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)[J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x3d

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 755
    new-array v9, v3, [J

    fill-array-data v9, :array_0

    .line 756
    .local v9, "ret":[J
    const-string v8, ""

    .line 758
    .local v8, "messageId":Ljava/lang/String;
    const/16 v0, 0x86

    if-ne p2, v0, :cond_3

    .line 759
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_0

    .line 760
    new-instance v8, Ljava/lang/String;

    .end local v8    # "messageId":Ljava/lang/String;
    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 768
    .restart local v8    # "messageId":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 769
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string v0, "m_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const-string v0, "m_type"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    const/16 v0, 0x80

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v3, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    const-string v0, "_id"

    aput-object v0, v3, v11

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 782
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 784
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v0

    .line 786
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_2
    return-object v9

    .line 763
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_3
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_0

    .line 764
    new-instance v8, Ljava/lang/String;

    .end local v8    # "messageId":Ljava/lang/String;
    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v8    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 789
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 755
    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public static fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;

    .prologue
    .line 233
    new-instance v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/model/MmsMessage;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)V

    return-object v0
.end method

.method public static fromKey(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # J

    .prologue
    .line 237
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    neg-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 239
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v1

    return-object v1
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 243
    const/4 v7, 0x0

    .line 244
    .local v7, "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/conversations/model/MessageProjection;->MMS_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 247
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 249
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageProjection;

    const/4 v1, 0x2

    invoke-direct {v0, v6, v1}, Lcom/sonyericsson/conversations/model/MessageProjection;-><init>(Landroid/database/Cursor;I)V

    invoke-static {p0, v6, v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/MmsMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 254
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_1
    return-object v7

    .line 254
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSizeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 507
    const-string v1, ""

    .line 508
    .local v1, "sizeStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSize()I

    move-result v0

    .line 510
    .local v0, "size":I
    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 511
    const-string v2, "MmsMessage"

    const-string v3, "can not get the mms size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_0
    return-object v1

    .line 512
    :cond_0
    const/16 v2, 0x400

    if-le v2, v0, :cond_1

    .line 513
    const-string v1, "1 KB"

    goto :goto_0

    .line 515
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, -0x1

    div-int/lit16 v3, v3, 0x400

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasNonForwardableDrmContent(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssm"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "invalidContent":Z
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 333
    .local v2, "slideShowIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    const/4 v3, 0x0

    .line 335
    .local v3, "sm":Lcom/android/mms/model/SlideModel;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "sm":Lcom/android/mms/model/SlideModel;
    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 337
    .restart local v3    # "sm":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v0

    .line 339
    .local v0, "am":Lcom/sonyericsson/conversations/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/AttachmentModel;->isAllowedToForward()Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    const/4 v1, 0x1

    .line 346
    .end local v0    # "am":Lcom/sonyericsson/conversations/model/AttachmentModel;
    :cond_1
    return v1
.end method

.method public static isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rc"    # Lcom/google/android/mms/pdu/RetrieveConf;

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 821
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v9

    .line 822
    .local v9, "rawMessageId":[B
    if-eqz v9, :cond_1

    .line 823
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 824
    .local v8, "messageId":Ljava/lang/String;
    const-string v4, "(m_id = ? AND m_type = ?)"

    .line 826
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    aput-object v8, v5, v10

    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 829
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v10

    const-string v0, "sub"

    aput-object v0, v3, v6

    const-string v0, "sub_cs"

    aput-object v0, v3, v11

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 834
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 836
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 839
    invoke-static {v7, p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 842
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 846
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "messageId":Ljava/lang/String;
    :goto_0
    return v0

    .line 842
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "messageId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "messageId":Ljava/lang/String;
    :cond_1
    move v0, v10

    .line 846
    goto :goto_0
.end method

.method private static isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "rc"    # Lcom/google/android/mms/pdu/RetrieveConf;

    .prologue
    const/4 v8, 0x1

    .line 851
    const/4 v2, 0x0

    .line 852
    .local v2, "encodedSubjectReceived":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x0

    .line 853
    .local v3, "encodedSubjectStored":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v6, 0x0

    .line 854
    .local v6, "subjectReceived":Ljava/lang/String;
    const/4 v7, 0x0

    .line 855
    .local v7, "subjectStored":Ljava/lang/String;
    const/4 v4, 0x0

    .line 857
    .local v4, "subject":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 858
    if-eqz v2, :cond_0

    .line 859
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 862
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_6

    .line 863
    const-string v9, "sub"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 864
    .local v5, "subjectIdx":I
    const-string v9, "sub_cs"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 865
    .local v1, "charsetIdx":I
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 866
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 867
    .local v0, "charset":I
    if-eqz v4, :cond_1

    .line 868
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v3    # "encodedSubjectStored":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {v4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v3, v0, v9}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 871
    .restart local v3    # "encodedSubjectStored":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 886
    .end local v0    # "charset":I
    .end local v1    # "charsetIdx":I
    .end local v5    # "subjectIdx":I
    :cond_2
    :goto_1
    return v8

    .line 874
    .restart local v0    # "charset":I
    .restart local v1    # "charsetIdx":I
    .restart local v5    # "subjectIdx":I
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 875
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    .line 876
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 878
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_1

    .line 879
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 862
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 886
    .end local v0    # "charset":I
    .end local v1    # "charsetIdx":I
    .end local v5    # "subjectIdx":I
    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 797
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    .line 798
    .local v9, "rawLocation":[B
    if-eqz v9, :cond_1

    .line 799
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 800
    .local v8, "location":Ljava/lang/String;
    const-string v4, "ct_l = ?"

    .line 801
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    aput-object v8, v5, v11

    .line 802
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v11

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 806
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 808
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 813
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 817
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "location":Ljava/lang/String;
    :goto_0
    return v0

    .line 813
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "location":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "location":Ljava/lang/String;
    :cond_1
    move v0, v11

    .line 817
    goto :goto_0
.end method

.method static isForwardable(Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mms"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 350
    const/4 v1, 0x1

    .line 353
    .local v1, "forwardable":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 354
    .local v2, "ssm":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v6

    if-gt v5, v6, :cond_1

    move v1, v3

    .line 355
    :goto_0
    if-eqz v1, :cond_0

    .line 356
    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->hasNonForwardableDrmContent(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 363
    .end local v2    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_1
    return v1

    .restart local v2    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    move v1, v4

    .line 354
    goto :goto_0

    :cond_2
    move v1, v4

    .line 356
    goto :goto_1

    .line 359
    .end local v2    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_1
.end method

.method public static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentLocation"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 923
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 924
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 927
    return-void
.end method

.method public static updateDateValue(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "date"    # J

    .prologue
    const/4 v4, 0x0

    .line 930
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 931
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 932
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 934
    return-void
.end method

.method public static updateDeliveryStatus(Landroid/content/Context;IJLandroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I
    .param p2, "recipientThreadId"    # J
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x2

    .line 905
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 910
    .local v3, "cv":Landroid/content/ContentValues;
    const/16 v0, 0x81

    if-ne p1, v0, :cond_0

    .line 911
    const-string v0, "delivery_status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 919
    return-void

    .line 913
    :cond_0
    const-string v0, "delivery_status"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 914
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static updateReadStatus(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 897
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 898
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 901
    return-void
.end method

.method public static updateResponseStatusAndMessageId(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "respStatus"    # I
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 938
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 939
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "resp_st"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    if-eqz p3, :cond_0

    .line 941
    const-string v0, "m_id"

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 945
    return-void
.end method

.method public static updateThreadId(Landroid/content/Context;JLandroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 891
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 892
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 893
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 894
    return-void
.end method


# virtual methods
.method public delete(J)Z
    .locals 8
    .param p1, "threadId"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 196
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "where":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 201
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonyericsson/conversations/model/ModelCache;->removeSlideshow(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/model/MmsMessage;->setUri(Landroid/net/Uri;)V

    .line 216
    .end local v2    # "where":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 202
    .restart local v2    # "where":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "MmsMessage"

    const-string v5, "Could not remove Slideshow cache "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 210
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    iget-wide v5, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mId:J

    invoke-static {v5, v6}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMessage(J)Landroid/net/Uri;

    move-result-object v1

    .line 212
    iget-object v5, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_1

    .end local v2    # "where":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 216
    goto :goto_1
.end method

.method public fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    return-object v0
.end method

.method public getBriefSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mBriefSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 157
    .local v0, "messageUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sonyericsson/conversations/model/ModelCache;->getBriefSlideshow(Landroid/content/Context;Landroid/net/Uri;J)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mBriefSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 160
    .end local v0    # "messageUri":Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mBriefSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v1
.end method

.method public getDetails()Ljava/lang/String;
    .locals 15

    .prologue
    .line 523
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 526
    .local v13, "strBuffer":Ljava/lang/StringBuffer;
    const-wide/16 v8, -0x1

    .line 528
    .local v8, "expire":J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "exp"

    aput-object v1, v2, v0

    .line 529
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 532
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 533
    :cond_0
    const-string v0, "MmsMessage"

    const-string v1, "invalid cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    if-eqz v6, :cond_1

    .line 538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 539
    const/4 v6, 0x0

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v11

    .line 546
    .local v11, "info":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v3, 0x7f07002f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 553
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    const-string v10, ""

    .line 557
    .local v10, "from":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v10

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    .end local v10    # "from":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 564
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    const-string v14, ""

    .line 568
    .local v14, "to":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getToRecipients()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    .end local v14    # "to":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v7

    .line 596
    .local v7, "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 597
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    const/4 v1, 0x1

    invoke-virtual {v7, v3, v4, v1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 605
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    const/4 v1, 0x1

    invoke-virtual {v7, v3, v4, v1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_5
    const/16 v0, 0x82

    iget v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    if-ne v0, v1, :cond_6

    .line 613
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_6

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v8, v9, v1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    :cond_6
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    const/16 v0, 0x84

    iget v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    if-eq v0, v1, :cond_7

    const/16 v0, 0x80

    iget v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    if-ne v0, v1, :cond_8

    .line 630
    :cond_7
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    const-string v12, ""

    .line 635
    .local v12, "priority":Ljava/lang/String;
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    packed-switch v0, :pswitch_data_0

    .line 649
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 653
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    .end local v12    # "priority":Ljava/lang/String;
    :cond_8
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 658
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f07002c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSizeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 664
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    :cond_9
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 535
    .end local v7    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .end local v11    # "info":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    :cond_a
    const-string v0, "exp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v3, 0x3e8

    mul-long v8, v0, v3

    goto/16 :goto_0

    .line 637
    .restart local v7    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .restart local v11    # "info":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .restart local v12    # "priority":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 639
    goto/16 :goto_1

    .line 642
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 644
    goto/16 :goto_1

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getKey()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mId:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    return-object v0
.end method

.method public getRawPriority()I
    .locals 3

    .prologue
    const/16 v0, 0x81

    .line 675
    iget v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    if-nez v1, :cond_1

    .line 676
    const/16 v0, 0x82

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 677
    :cond_1
    iget v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 679
    iget v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 680
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public getSize()I
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 468
    const/4 v8, -0x1

    .line 470
    .local v8, "size":I
    const/16 v0, 0x82

    iget v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    if-ne v0, v1, :cond_3

    .line 471
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "m_size"

    aput-object v1, v2, v0

    .line 472
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 475
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 476
    :cond_0
    const-string v0, "MmsMessage"

    const-string v1, "invalid cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    if-eqz v6, :cond_1

    .line 482
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 503
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v8

    .line 478
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v0, "m_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_0

    .line 485
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v9, 0x0

    .line 488
    .local v9, "slideshowModel":Lcom/android/mms/model/SlideshowModel;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 493
    :goto_2
    if-eqz v9, :cond_1

    .line 494
    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v8

    .line 496
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v10

    .line 497
    .local v10, "subject":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v8, v0

    goto :goto_1

    .line 489
    .end local v10    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 490
    .local v7, "e":Lcom/google/android/mms/MmsException;
    const-string v0, "MmsMessage"

    const-string v1, "get the mms size failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 167
    .local v1, "messageUri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/sonyericsson/conversations/model/ModelCache;->getSlideshow(Landroid/content/Context;Landroid/net/Uri;J)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "messageUri":Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v2

    .line 168
    .restart local v1    # "messageUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 177
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mUri:Landroid/net/Uri;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasThumbnails()Z
    .locals 5

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, "isAttached":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getBriefSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 428
    .local v3, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 429
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 431
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    :cond_1
    const/4 v0, 0x1

    .line 440
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_2
    :goto_0
    return v0

    .line 436
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public isContentEmpty()Z
    .locals 5

    .prologue
    .line 370
    const/4 v0, 0x1

    .line 371
    .local v0, "empty":Z
    const/4 v3, 0x0

    .line 374
    .local v3, "slideshow":Lcom/android/mms/model/SlideshowModel;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 376
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 378
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 379
    const/4 v0, 0x0

    .line 391
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    :goto_0
    return v0

    .line 381
    .restart local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .restart local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    :cond_3
    const/4 v0, 0x0

    .line 384
    goto :goto_0

    .line 387
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFileAttached()Z
    .locals 5

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "isAttached":Z
    const/4 v3, 0x0

    .line 402
    .local v3, "slideshow":Lcom/android/mms/model/SlideshowModel;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getBriefSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 403
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 404
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 406
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    :cond_1
    const/4 v0, 0x1

    .line 416
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_2
    :goto_0
    return v0

    .line 412
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public preload()V
    .locals 8

    .prologue
    .line 294
    invoke-super {p0}, Lcom/sonyericsson/conversations/model/Message;->preload()V

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 299
    .local v2, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v2, :cond_1

    .line 300
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 301
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 304
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 305
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->createThumbnail()Landroid/graphics/Bitmap;

    goto :goto_0

    .line 312
    .end local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v2    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v4

    .line 316
    :cond_1
    return-void

    .line 306
    .restart local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .restart local v1    # "slide":Lcom/android/mms/model/SlideModel;
    .restart local v2    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v3

    .line 308
    .local v3, "video":Lcom/android/mms/model/VideoModel;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getKey()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/model/ModelCache;->getVideoThumbnail(Landroid/net/Uri;J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setRawPriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .prologue
    const/4 v1, 0x1

    .line 688
    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    .line 697
    :goto_0
    return-void

    .line 690
    :cond_0
    const/16 v0, 0x81

    if-ne p1, v0, :cond_1

    .line 691
    iput v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    goto :goto_0

    .line 692
    :cond_1
    const/16 v0, 0x80

    if-ne p1, v0, :cond_2

    .line 693
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    goto :goto_0

    .line 695
    :cond_2
    iput v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    goto :goto_0
.end method

.method public setRead(Z)V
    .locals 4
    .param p1, "read"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 148
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mRead:Z

    .line 152
    return-void
.end method

.method public setSlideshow(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 69
    return-void
.end method

.method public setSubject(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "isFixed"    # Z

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    .line 289
    iput-boolean p2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    .line 290
    return-void
.end method

.method public subjectIsFixed()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    return-object v0
.end method
