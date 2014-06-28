.class public abstract Lcom/sonyericsson/conversations/model/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field public static final DRAFTS:I = 0x1

.field public static final FAILED:I = 0x4

.field public static final HIGH_PRIORITY:I = 0x0

.field public static final INBOX:I = 0x0

.field public static final KEY_NONE:I = 0x0

.field public static final LOW_PRIORITY:I = 0x2

.field public static final MMS:I = 0x1

.field public static final MO:I = 0x0

.field public static final MT:I = 0x1

.field public static final NONE:I = -0x1

.field public static final NORMAL_PRIORITY:I = 0x1

.field public static final OUTBOX:I = 0x2

.field public static final QUEUED:I = 0x5

.field public static final REPORT_NEGATIVE:I = 0x3

.field public static final REPORT_NONE:I = 0x0

.field public static final REPORT_PENDING:I = 0x1

.field public static final REPORT_POSITIVE:I = 0x2

.field public static final SENT:I = 0x3

.field public static final SMS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Message"

.field private static final TYPE_DISCRIMINATOR_MMS:Ljava/lang/String; = "mms"

.field private static final TYPE_DISCRIMINATOR_SMS:Ljava/lang/String; = "sms"

.field public static final UNKNOWN_BOX:I = -0x1


# instance fields
.field public box:I

.field public date:J

.field public deliveryStatus:I

.field protected mContext:Landroid/content/Context;

.field protected mId:J

.field protected mPriority:I

.field protected mRead:Z

.field protected mUri:Landroid/net/Uri;

.field public starStatus:I

.field public type:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    .line 142
    iput v2, p0, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    .line 146
    iput v2, p0, Lcom/sonyericsson/conversations/model/Message;->mPriority:I

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    .line 264
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 245
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMsgId:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    .line 246
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnRead:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Message;->mRead:Z

    .line 247
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnStarStatus:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnStarStatus:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    .line 251
    :cond_0
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mProjectionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 252
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnDeliveryStatus:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget v0, p3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnDeliveryStatus:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    .line 256
    :cond_1
    return-void

    .line 246
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createKey(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)J
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/Message;->getMessageType(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "type":Ljava/lang/String;
    iget v3, p1, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMsgId:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 103
    .local v0, "id":J
    const-string v3, "sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    .end local v0    # "id":J
    :goto_0
    return-wide v0

    .restart local v0    # "id":J
    :cond_0
    neg-long v0, v0

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "threadId"    # J

    .prologue
    .line 395
    invoke-static {p1}, Lcom/sonyericsson/conversations/model/Message;->getType(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 403
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/SmsMessage;-><init>(Landroid/content/Context;)V

    .line 405
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V

    .line 406
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/conversations/model/Message;->delete(J)Z

    .line 407
    return-void

    .line 400
    .end local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/MmsMessage;-><init>(Landroid/content/Context;)V

    .line 401
    .restart local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/Message;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;

    .prologue
    .line 157
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/model/Message;->getMessageType(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "msgType":Ljava/lang/String;
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v1

    goto :goto_0
.end method

.method public static fromKey(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Message;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "msg":Lcom/sonyericsson/conversations/model/Message;
    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 200
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromKey(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v0

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 202
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromKey(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 217
    invoke-static {p1}, Lcom/sonyericsson/conversations/model/Message;->getType(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 223
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 219
    :pswitch_0
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v0

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v0

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMessageType(Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection;

    .prologue
    .line 169
    iget v1, p1, Lcom/sonyericsson/conversations/model/MessageProjection;->mProjectionType:I

    packed-switch v1, :pswitch_data_0

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 171
    :pswitch_0
    const-string v0, "sms"

    .line 185
    .local v0, "msgType":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 175
    .end local v0    # "msgType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "mms"

    .line 176
    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v0    # "msgType":Ljava/lang/String;
    :pswitch_2
    iget v1, p1, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMsgType:I

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 426
    const-wide/16 v7, -0x1

    .line 427
    .local v7, "threadId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 431
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 433
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 437
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_1
    return-wide v7

    .line 437
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 228
    if-eqz p0, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "authority":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 231
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 239
    .end local v0    # "authority":Ljava/lang/String;
    :goto_0
    return v1

    .line 233
    .restart local v0    # "authority":Ljava/lang/String;
    :cond_0
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const/4 v1, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "authority":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getUnreadMessage(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Message;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    .line 539
    const/4 v7, 0x0

    .line 540
    .local v7, "message":Lcom/sonyericsson/conversations/model/Message;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "semc_ext"

    const-string v4, "true"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 542
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "read = 0"

    .line 544
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/conversations/model/MessageProjection;->COMMON_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "normalized_date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 548
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 550
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageProjection;

    const/4 v2, 0x3

    invoke-direct {v0, v6, v2}, Lcom/sonyericsson/conversations/model/MessageProjection;-><init>(Landroid/database/Cursor;I)V

    invoke-static {p0, v6, v0}, Lcom/sonyericsson/conversations/model/Message;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;)Lcom/sonyericsson/conversations/model/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 555
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 558
    :cond_1
    return-object v7

    .line 555
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isForwardable(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 418
    instance-of v0, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v0, :cond_0

    .line 419
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isForwardable(Landroid/content/Context;Lcom/sonyericsson/conversations/model/MmsMessage;)Z

    move-result v0

    .line 421
    :goto_0
    return v0

    .restart local p1    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 326
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 328
    iget v1, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 329
    invoke-static {}, Lcom/sonyericsson/conversations/model/ConversationCache;->clear()V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V

    .line 334
    :cond_1
    return-void
.end method

.method public delete(J)Z
    .locals 5
    .param p1, "threadId"    # J

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 352
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 354
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/model/ConversationCache;->delete(Ljava/lang/Long;)Z

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 359
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V

    .line 360
    const/4 v2, 0x1

    .line 364
    .end local v1    # "where":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getKey()J
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/sonyericsson/conversations/model/Message;->mPriority:I

    return v0
.end method

.method public abstract getRawPriority()I
.end method

.method protected getStatus()Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f070037

    .line 449
    const-string v0, ""

    .line 451
    .local v0, "status":Ljava/lang/String;
    iget v1, p0, Lcom/sonyericsson/conversations/model/Message;->box:I

    packed-switch v1, :pswitch_data_0

    .line 481
    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    packed-switch v1, :pswitch_data_1

    .line 496
    :goto_1
    return-object v0

    .line 453
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    goto :goto_0

    .line 463
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    const v2, 0x7f070034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    goto :goto_0

    .line 468
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    const v2, 0x7f070036

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    goto :goto_0

    .line 473
    :pswitch_5
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    goto :goto_0

    .line 483
    :pswitch_6
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    const v2, 0x7f070035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    goto :goto_1

    .line 488
    :pswitch_7
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Message;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    goto :goto_1

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 481
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/Message;->mRead:Z

    return v0
.end method

.method public isStored()Z
    .locals 4

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUrgent()Z
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/sonyericsson/conversations/model/Message;->mPriority:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preload()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 521
    iput p1, p0, Lcom/sonyericsson/conversations/model/Message;->mPriority:I

    .line 522
    return-void
.end method

.method public abstract setRawPriority(I)V
.end method

.method public abstract setRead(Z)V
.end method

.method public setStarStatus(I)V
    .locals 0
    .param p1, "newStatus"    # I

    .prologue
    .line 535
    iput p1, p0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    .line 536
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/Message;->mUri:Landroid/net/Uri;

    .line 313
    if-eqz p1, :cond_0

    .line 314
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/Message;->mId:J

    goto :goto_0
.end method
