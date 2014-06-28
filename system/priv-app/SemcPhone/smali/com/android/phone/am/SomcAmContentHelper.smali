.class public Lcom/android/phone/am/SomcAmContentHelper;
.super Ljava/lang/Object;
.source "SomcAmContentHelper.java"


# static fields
.field private static CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final CALL_LOG_URI:Landroid/net/Uri;

.field private static PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final VOICE_MAIL_PROJECTION:[Ljava/lang/String;

.field private static sAmContentHelper:Lcom/android/phone/am/SomcAmContentHelper;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContentValues:Landroid/content/ContentValues;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    sput-object v0, Lcom/android/phone/am/SomcAmContentHelper;->CALL_LOG_URI:Landroid/net/Uri;

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "has_content"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "source_package"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "source_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/am/SomcAmContentHelper;->VOICE_MAIL_PROJECTION:[Ljava/lang/String;

    .line 61
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "presentation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/am/SomcAmContentHelper;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/am/SomcAmContentHelper;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/am/SomcAmContentHelper;->sAmContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContext:Landroid/content/Context;

    .line 82
    iput-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    iput-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    .line 86
    iput-object p1, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    return-void
.end method

.method private copyStreamData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 155
    .local v0, "data":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "numBytes":I
    if-lez v1, :cond_0

    .line 156
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method private createNewMessageFromCursor(Landroid/database/Cursor;)Lcom/android/phone/am/SomcAmMessage;
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 277
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 278
    .local v13, "date":J
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 279
    .local v15, "name":Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "number":Ljava/lang/String;
    const/16 v1, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 281
    .local v12, "numberPresentation":I
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 282
    .local v8, "duration":J
    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v10, 0x1

    .line 283
    .local v10, "isRead":Z
    :goto_0
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 285
    .local v11, "uri":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 286
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 288
    .local v2, "phoneUri":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 290
    .local v16, "phoneLookupCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/phone/am/SomcAmContentHelper;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 292
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 296
    .end local v15    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    :goto_1
    if-eqz v16, :cond_0

    .line 297
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 302
    .end local v2    # "phoneUri":Landroid/net/Uri;
    .end local v16    # "phoneLookupCursor":Landroid/database/Cursor;
    :cond_0
    :goto_2
    new-instance v3, Lcom/android/phone/am/SomcAmMessage;

    move-wide v4, v13

    invoke-direct/range {v3 .. v12}, Lcom/android/phone/am/SomcAmMessage;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;I)V

    return-object v3

    .line 282
    .end local v6    # "name":Ljava/lang/String;
    .end local v10    # "isRead":Z
    .end local v11    # "uri":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 296
    .restart local v2    # "phoneUri":Landroid/net/Uri;
    .restart local v10    # "isRead":Z
    .restart local v11    # "uri":Ljava/lang/String;
    .restart local v16    # "phoneLookupCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v16, :cond_2

    .line 297
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    move-object v6, v15

    .end local v15    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "phoneUri":Landroid/net/Uri;
    .end local v6    # "name":Ljava/lang/String;
    .end local v16    # "phoneLookupCursor":Landroid/database/Cursor;
    .restart local v15    # "name":Ljava/lang/String;
    :cond_4
    move-object v6, v15

    .end local v15    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    goto :goto_2
.end method

.method public static declared-synchronized getSomcAmContentHelperInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmContentHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const-class v1, Lcom/android/phone/am/SomcAmContentHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/am/SomcAmContentHelper;->sAmContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/phone/am/SomcAmContentHelper;

    invoke-direct {v0, p0}, Lcom/android/phone/am/SomcAmContentHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/am/SomcAmContentHelper;->sAmContentHelper:Lcom/android/phone/am/SomcAmContentHelper;

    .line 100
    :cond_0
    sget-object v0, Lcom/android/phone/am/SomcAmContentHelper;->sAmContentHelper:Lcom/android/phone/am/SomcAmContentHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resetContentValues()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    .line 203
    return-void
.end method

.method private setVoicemailContent(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "amFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 122
    .local v2, "outputStream":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 125
    iget-object v5, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 126
    invoke-direct {p0, v1, v2}, Lcom/android/phone/am/SomcAmContentHelper;->copyStreamData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 131
    :cond_0
    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_1
    iget-object v5, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    const-string v6, "mime_type"

    const-string v7, "audio/amr"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    const-string v6, "has_content"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 137
    iget-object v5, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v5, p1, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 138
    .local v4, "updatedCount":I
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmContentHelper;->resetContentValues()V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 140
    .local v3, "ret":Z
    if-nez v3, :cond_2

    .line 141
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    const-string v5, "SomcAmContentHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete file! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2
    if-eq v4, v8, :cond_5

    .line 146
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating voicemail should have updated 1 row, was: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 128
    .end local v3    # "ret":Z
    .end local v4    # "updatedCount":I
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 129
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 131
    :cond_3
    if-eqz v1, :cond_4

    .line 132
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v5

    .line 149
    .restart local v3    # "ret":Z
    .restart local v4    # "updatedCount":I
    :cond_5
    return-void
.end method


# virtual methods
.method public deleteAllMessages()I
    .locals 5

    .prologue
    .line 258
    const-string v1, "%s = \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "source_package"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteMessageByUri(Landroid/net/Uri;)I
    .locals 5
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 247
    const-string v1, "%s = \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "source_package"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getIncomingMessages()[Lcom/android/phone/am/SomcAmMessage;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 211
    const/4 v6, 0x0

    .line 213
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "%s = %s AND %s = \'%s\'"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "type"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "source_package"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/am/SomcAmContentHelper;->CALL_LOG_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/am/SomcAmContentHelper;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 219
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v9, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/am/SomcAmMessage;>;"
    const/4 v7, 0x0

    .line 221
    .local v7, "message":Lcom/android/phone/am/SomcAmMessage;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-direct {p0, v6}, Lcom/android/phone/am/SomcAmContentHelper;->createNewMessageFromCursor(Landroid/database/Cursor;)Lcom/android/phone/am/SomcAmMessage;

    move-result-object v7

    .line 223
    if-eqz v7, :cond_0

    .line 224
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 233
    .end local v3    # "selection":Ljava/lang/String;
    .end local v7    # "message":Lcom/android/phone/am/SomcAmMessage;
    .end local v9    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/am/SomcAmMessage;>;"
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 227
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v7    # "message":Lcom/android/phone/am/SomcAmMessage;
    .restart local v9    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/am/SomcAmMessage;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 228
    .local v8, "messageCount":I
    if-lez v8, :cond_4

    .line 229
    new-array v0, v8, [Lcom/android/phone/am/SomcAmMessage;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/am/SomcAmMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    if-eqz v6, :cond_3

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    .end local v7    # "message":Lcom/android/phone/am/SomcAmMessage;
    .end local v8    # "messageCount":I
    .end local v9    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/am/SomcAmMessage;>;"
    :cond_3
    :goto_1
    return-object v0

    .line 233
    :cond_4
    if-eqz v6, :cond_5

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v10

    .line 237
    goto :goto_1
.end method

.method public insert(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordedDuration"    # J

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    const-string v3, "duration"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    iget-object v2, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/phone/am/SomcAmContentHelper;->setVoicemailContent(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "SomcAmContentHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy an answering machine message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isReadyToInsert()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentValues(Ljava/lang/String;IJ)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "presentation"    # I
    .param p3, "date"    # J

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    .line 174
    :cond_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne p2, v0, :cond_2

    .line 175
    const-string p1, "-2"

    .line 182
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "source_package"

    iget-object v2, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "has_content"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "is_read"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 187
    return-void

    .line 176
    :cond_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne p2, v0, :cond_3

    .line 177
    const-string p1, "-1"

    goto :goto_0

    .line 178
    :cond_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne p2, v0, :cond_1

    .line 179
    const-string p1, "-3"

    goto :goto_0
.end method

.method public updateVoicemailToReadByUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 270
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    .line 271
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "is_read"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 272
    iget-object v0, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmContentHelper;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmContentHelper;->resetContentValues()V

    .line 274
    return-void
.end method
