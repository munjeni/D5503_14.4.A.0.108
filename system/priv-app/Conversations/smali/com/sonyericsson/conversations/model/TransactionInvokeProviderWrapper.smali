.class public Lcom/sonyericsson/conversations/model/TransactionInvokeProviderWrapper;
.super Ljava/lang/Object;
.source "TransactionInvokeProviderWrapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "TransactionInvokeProviderWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteByUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0, p1, v1, v1}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method public static deletePendingMessage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 272
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 276
    .local v0, "msgId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method public static getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "ct_l"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 67
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 69
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 70
    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_1
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDownloadFailedToast(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 249
    const/4 v4, 0x0

    .line 252
    .local v4, "toast":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/NotificationInd;

    .line 255
    .local v2, "ind":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 256
    .local v5, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "subject":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 260
    new-instance v7, Lcom/sonyericsson/conversations/model/Participant;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-direct {v7, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->format(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "from":Ljava/lang/String;
    const v6, 0x7f070091

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .end local v1    # "from":Ljava/lang/String;
    .end local v2    # "ind":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v3    # "subject":Ljava/lang/String;
    .end local v5    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_2
    return-object v4

    .line 256
    .restart local v2    # "ind":Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v5    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    const v6, 0x7f07009c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 260
    .restart local v3    # "subject":Ljava/lang/String;
    :cond_1
    const-string v6, ""
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 264
    .end local v2    # "ind":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v3    # "subject":Ljava/lang/String;
    .end local v5    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v6, "TransactionInvokeProviderWrapper"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    .local v7, "userAgentString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sonyericsson.provider.useragent/mms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 48
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 50
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 54
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    :goto_0
    return-object v7

    .line 54
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 57
    :cond_1
    const-string v0, "TransactionInvokeProviderWrapper"

    const-string v1, "Failed to get user agent string from UserAgentProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static scheduleRetry(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 37
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isManualRequest"    # Z
    .param p3, "isPermanentError"    # Z

    .prologue
    .line 82
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 84
    .local v24, "msgId":J
    sget-object v5, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v35

    .line 85
    .local v35, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v5, "protocol"

    const-string v6, "mms"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    const-string v5, "message"

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 90
    .local v17, "cursor":Landroid/database/Cursor;
    const/16 v34, 0x0

    .line 92
    .local v34, "toast":Ljava/lang/String;
    if-nez v17, :cond_0

    .line 246
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 97
    const-string v5, "msg_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 100
    .local v26, "msgType":I
    sparse-switch v26, :sswitch_data_0

    .line 109
    const-string v5, "TransactionInvokeProviderWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad message type found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v26    # "msgType":I
    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 102
    .restart local v26    # "msgType":I
    :sswitch_0
    const/16 v18, 0x2

    .line 113
    .local v18, "direction":I
    :goto_2
    :try_start_1
    const-string v5, "retry_index"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v30, v5, 0x1

    .line 119
    .local v30, "retryIndex":I
    const/16 v20, 0x1

    .line 121
    .local v20, "errorType":I
    new-instance v31, Lcom/android/mms/transaction/DefaultRetryScheme;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v30

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;III)V

    .line 124
    .local v31, "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    new-instance v36, Landroid/content/ContentValues;

    const/4 v5, 0x4

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 125
    .local v36, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 126
    .local v15, "current":J
    const/16 v5, 0x82

    move/from16 v0, v26

    if-ne v0, v5, :cond_6

    const/16 v23, 0x1

    .line 127
    .local v23, "isRetryDownloading":Z
    :goto_3
    const/16 v27, -0x1

    .line 129
    .local v27, "notificationType":I
    if-nez p3, :cond_7

    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_7

    .line 130
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v5

    add-long v28, v15, v5

    .line 139
    .local v28, "retryAt":J
    const-string v5, "due_time"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    if-eqz v23, :cond_2

    .line 143
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v19

    .line 144
    .local v19, "downloadManager":Lcom/android/mms/util/DownloadManager;
    const/16 v5, 0x82

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 145
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v12

    .line 147
    .local v12, "autoDownload":Z
    const/4 v5, 0x1

    move/from16 v0, v30

    if-ne v0, v5, :cond_2

    if-eqz v12, :cond_2

    .line 148
    const/16 v27, 0x0

    .line 188
    .end local v12    # "autoDownload":Z
    .end local v19    # "downloadManager":Lcom/android/mms/util/DownloadManager;
    .end local v28    # "retryAt":J
    :cond_2
    :goto_4
    const-string v5, "err_type"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v5, "retry_index"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v5, "last_try"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v5, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 193
    .local v14, "columnIndex":I
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 194
    .local v21, "id":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, v36

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    const/4 v5, -0x1

    move/from16 v0, v27

    if-eq v0, v5, :cond_3

    .line 199
    new-instance v8, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v8, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 200
    .local v8, "readValues":Landroid/content/ContentValues;
    const-string v5, "read"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/notifications/Notification;->add(Landroid/net/Uri;)V

    .line 206
    .end local v8    # "readValues":Landroid/content/ContentValues;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 209
    const/4 v5, 0x1

    move/from16 v0, v30

    if-ne v0, v5, :cond_4

    .line 210
    packed-switch v26, :pswitch_data_0

    .line 225
    :cond_4
    :goto_5
    :pswitch_0
    if-eqz p2, :cond_5

    .line 226
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/model/TransactionInvokeProviderWrapper;->getDownloadFailedToast(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v34

    .line 240
    .end local v14    # "columnIndex":I
    .end local v15    # "current":J
    .end local v18    # "direction":I
    .end local v20    # "errorType":I
    .end local v21    # "id":J
    .end local v23    # "isRetryDownloading":Z
    .end local v26    # "msgType":I
    .end local v27    # "notificationType":I
    .end local v30    # "retryIndex":I
    .end local v31    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v36    # "values":Landroid/content/ContentValues;
    :cond_5
    :goto_6
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 241
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v6}, Lcom/android/mms/util/DownloadManager;->showToastToUser(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 244
    :catchall_0
    move-exception v5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v5

    .line 106
    .restart local v26    # "msgType":I
    :sswitch_1
    const/16 v18, 0x1

    .line 107
    .restart local v18    # "direction":I
    goto/16 :goto_2

    .line 126
    .restart local v15    # "current":J
    .restart local v20    # "errorType":I
    .restart local v30    # "retryIndex":I
    .restart local v31    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v36    # "values":Landroid/content/ContentValues;
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 152
    .restart local v23    # "isRetryDownloading":Z
    .restart local v27    # "notificationType":I
    :cond_7
    const/16 v20, 0xa

    .line 153
    if-eqz v23, :cond_c

    .line 154
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "thread_id"

    aput-object v7, v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 159
    .local v13, "c":Landroid/database/Cursor;
    const-wide/16 v32, -0x1

    .line 160
    .local v32, "threadId":J
    if-eqz v13, :cond_9

    .line 162
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 163
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v32

    .line 166
    :cond_8
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_9
    const-wide/16 v5, -0x1

    cmp-long v5, v32, v5

    if-eqz v5, :cond_a

    .line 172
    if-eqz p2, :cond_b

    .line 175
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/model/TransactionInvokeProviderWrapper;->getDownloadFailedToast(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v34

    .line 181
    :cond_a
    :goto_7
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    const/16 v6, 0x87

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    goto/16 :goto_4

    .line 166
    :catchall_1
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 177
    :cond_b
    const/16 v27, 0x3

    goto :goto_7

    .line 184
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v32    # "threadId":J
    :cond_c
    const/16 v27, 0x1

    goto/16 :goto_4

    .line 212
    .restart local v14    # "columnIndex":I
    .restart local v21    # "id":J
    :pswitch_1
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/model/TransactionInvokeProviderWrapper;->getDownloadFailedToast(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v34

    .line 213
    goto :goto_5

    .line 215
    :pswitch_2
    const v5, 0x7f070096

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 217
    goto/16 :goto_5

    .line 236
    .end local v14    # "columnIndex":I
    .end local v15    # "current":J
    .end local v18    # "direction":I
    .end local v20    # "errorType":I
    .end local v21    # "id":J
    .end local v23    # "isRetryDownloading":Z
    .end local v26    # "msgType":I
    .end local v27    # "notificationType":I
    .end local v30    # "retryIndex":I
    .end local v31    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v36    # "values":Landroid/content/ContentValues;
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p2, :cond_5

    .line 237
    const v5, 0x7f07006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v34

    goto/16 :goto_6

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch

    .line 210
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
