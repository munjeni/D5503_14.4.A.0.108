.class public Lcom/sonyericsson/conversations/model/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Conversation"

.field public static final THREAD_ID_NONE:I = -0x1

.field private static final serialVersionUID:J = -0x75ee4f1b2d50f40dL


# instance fields
.field private mCityId:Ljava/lang/String;

.field private mParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadId:J


# direct methods
.method private constructor <init>(JLjava/util/List;)V
    .locals 1
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/sonyericsson/conversations/model/Conversation;->mThreadId:J

    .line 59
    instance-of v0, p3, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 60
    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iput-object p3, p0, Lcom/sonyericsson/conversations/model/Conversation;->mParticipants:Ljava/util/ArrayList;

    .line 64
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Conversation;->mCityId:Ljava/lang/String;

    .line 65
    return-void

    .line 62
    .restart local p3    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Conversation;->mParticipants:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static checkSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "freetextStr"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "result":Z
    if-eqz p0, :cond_0

    .line 216
    const-string v1, ".*[a-zA-Z]+.*"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    const/4 v0, 0x0

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static createEmpty(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/model/Conversation;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public static extractAddressFromContactPickerIntent(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "addressesFromContactPicker"    # Ljava/util/ArrayList;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_3

    .line 185
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, "addressFromContactPicker":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 187
    .local v0, "address":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 188
    instance-of v6, v1, Landroid/net/Uri;

    if-eqz v6, :cond_2

    move-object v5, v1

    .line 189
    check-cast v5, Landroid/net/Uri;

    .line 190
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {v5, p1}, Lcom/sonyericsson/conversations/model/Conversation;->extractUriAdress(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_2
    instance-of v6, v1, Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 192
    const/4 v3, 0x0

    .local v3, "freetext":Ljava/lang/CharSequence;
    move-object v3, v1

    .line 193
    check-cast v3, Ljava/lang/CharSequence;

    .line 194
    invoke-static {v3}, Lcom/sonyericsson/conversations/model/Conversation;->extractFreetextAddress(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 202
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "addressFromContactPicker":Ljava/lang/Object;
    .end local v3    # "freetext":Ljava/lang/CharSequence;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v2
.end method

.method private static extractFreetextAddress(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "freetext"    # Ljava/lang/CharSequence;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "address":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "freetextStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/model/Conversation;->checkSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    move-object v0, v1

    .line 169
    .end local v1    # "freetextStr":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static extractUriAdress(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 133
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 135
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "mimetype"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "mimeType":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 147
    .end local v8    # "mimeType":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    return-object v6

    .line 139
    .restart local v8    # "mimeType":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 147
    .end local v8    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 1
    .param p0, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/sonyericsson/conversations/model/Conversation;"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v0, Lcom/sonyericsson/conversations/model/Conversation;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/model/Conversation;-><init>(JLjava/util/List;)V

    return-object v0
.end method

.method public static fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/sonyericsson/conversations/model/Conversation;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/Conversation;->createEmpty(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v6

    .line 109
    :goto_0
    return-object v6

    .line 93
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 95
    .local v3, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 96
    .local v1, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    .end local v1    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_2
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v2

    .line 103
    .local v2, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v2, p0, v3}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    .line 109
    .local v4, "threadId":J
    new-instance v6, Lcom/sonyericsson/conversations/model/Conversation;

    invoke-direct {v6, v4, v5, p1}, Lcom/sonyericsson/conversations/model/Conversation;-><init>(JLjava/util/List;)V

    goto :goto_0
.end method

.method public static fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 235
    const/4 v7, 0x0

    .line 236
    .local v7, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {p0, p1, p2, v4}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;JLjava/lang/String;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "recipient_ids"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 245
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, "recipientIdsSpaceSeparated":Ljava/lang/String;
    invoke-static {p0, p1, p2, v8}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;JLjava/lang/String;)Lcom/sonyericsson/conversations/model/Conversation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 253
    .end local v8    # "recipientIdsSpaceSeparated":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    .line 256
    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;JLjava/lang/String;)Lcom/sonyericsson/conversations/model/Conversation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1

    .line 253
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static fromThreadId(Landroid/content/Context;JLjava/lang/String;)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "recipientIdsSpaceSeparated"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p0, p3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v1, Lcom/sonyericsson/conversations/model/Conversation;

    invoke-direct {v1, p1, p2, v0}, Lcom/sonyericsson/conversations/model/Conversation;-><init>(JLjava/util/List;)V

    return-object v1
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 314
    .local v0, "threadId":J
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v2

    .line 317
    .end local v0    # "threadId":J
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getParticipants(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipientIdSpaceSeparated"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v15, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 325
    const-string v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 327
    .local v16, "recipientIds":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 328
    .local v2, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 335
    .local v4, "selection":Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 337
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v13, "idArray":Ljava/lang/StringBuilder;
    move-object/from16 v9, v16

    .local v9, "arr$":[Ljava/lang/String;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v14, :cond_0

    aget-object v12, v9, v11

    .line 339
    .local v12, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 342
    .end local v12    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 346
    const-string v1, "content://mms-sms/canonical-addresses/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 352
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "idArray":Ljava/lang/StringBuilder;
    .end local v14    # "len$":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 354
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 357
    :try_start_0
    const-string v1, "address"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 358
    .local v8, "addressColumnIndex":I
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, "address":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 362
    new-instance v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v1, v7}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 370
    .end local v7    # "address":Ljava/lang/String;
    .end local v8    # "addressColumnIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 349
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/canonical-address/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 364
    .restart local v7    # "address":Ljava/lang/String;
    .restart local v8    # "addressColumnIndex":I
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    const-string v1, "Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null canonical-address, id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_id"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 370
    .end local v7    # "address":Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 374
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "addressColumnIndex":I
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v16    # "recipientIds":[Ljava/lang/String;
    :cond_4
    return-object v15
.end method

.method public static getRecipients(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "base":Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 418
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .end local v0    # "base":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "base":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static threadExists(Landroid/content/Context;J)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    const/4 v4, 0x0

    .line 267
    const/4 v7, 0x0

    .line 268
    .local v7, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    const/4 v8, 0x0

    .line 269
    .local v8, "threadExists":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "recipient_ids"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 273
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 275
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v8, 0x1

    .line 279
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_1
    return v8

    .line 279
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Conversation;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Conversation;->mParticipants:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/Conversation;->mThreadId:J

    return-wide v0
.end method

.method public hasEmailParticipants()Z
    .locals 4

    .prologue
    .line 393
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Conversation;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 394
    .local v1, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 395
    const/4 v2, 0x1

    .line 399
    .end local v1    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasParticipants()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Conversation;->mParticipants:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/Conversation;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasValidRecipients()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 403
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/Conversation;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v2

    .line 406
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/Conversation;->mParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 407
    .local v1, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 412
    .end local v1    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCityId"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/Conversation;->mCityId:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setMessageCount(IILandroid/widget/TextView;)V
    .locals 2
    .param p1, "unReadCount"    # I
    .param p2, "totalCount"    # I
    .param p3, "messageCountView"    # Landroid/widget/TextView;

    .prologue
    .line 431
    if-eqz p3, :cond_0

    .line 433
    if-eqz p2, :cond_0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_0
    return-void
.end method
