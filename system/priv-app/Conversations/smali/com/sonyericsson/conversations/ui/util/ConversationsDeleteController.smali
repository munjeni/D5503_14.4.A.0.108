.class public Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController;
.super Ljava/lang/Object;
.source "ConversationsDeleteController.java"


# static fields
.field static final MAX_COUNT_OF_DELETE_MESSAGE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatDeleteCondition(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v10, "/"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "idList":[Ljava/lang/String;
    array-length v10, v4

    div-int/lit8 v7, v10, 0x64

    .line 99
    .local v7, "n":I
    array-length v10, v4

    rem-int/lit8 v10, v10, 0x64

    if-eqz v10, :cond_0

    .line 100
    add-int/lit8 v7, v7, 0x1

    .line 103
    :cond_0
    new-array v9, v7, [Ljava/lang/String;

    .line 104
    .local v9, "whereList":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 105
    .local v8, "strWhereBuffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 106
    .local v5, "index":I
    const/4 v1, 0x0

    .line 107
    .local v1, "count":I
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_5

    aget-object v3, v0, v2

    .line 108
    .local v3, "id":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 109
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8    # "strWhereBuffer":Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .restart local v8    # "strWhereBuffer":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 112
    const-string v10, " OR "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 115
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :cond_3
    const/16 v10, 0x64

    if-lt v1, v10, :cond_4

    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    const/4 v1, 0x0

    .line 107
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    .end local v3    # "id":Ljava/lang/String;
    :cond_5
    if-eqz v8, :cond_6

    .line 126
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 128
    :cond_6
    return-object v9
.end method

.method public static removeMarkedMessages(Landroid/content/Context;JLjava/util/List;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_9

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_9

    .line 27
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v17, "strSmsWhereBuilder":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v16, "strMmsWhereBuilder":Ljava/lang/StringBuilder;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 32
    .local v7, "id":J
    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-gez v22, :cond_0

    .line 33
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v23, 0x0

    sub-long v23, v23, v7

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 35
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 40
    .end local v7    # "id":J
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController;->formatDeleteCondition(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 41
    .local v15, "smsWhere":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController;->formatDeleteCondition(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 43
    .local v13, "mmsWhere":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 47
    .local v4, "cr":Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    .line 48
    .local v20, "tempThreadId":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 49
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " AND thread_id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 51
    :cond_2
    const/4 v5, 0x0

    .line 52
    .local v5, "deleteCount":I
    move-object v3, v15

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_4

    aget-object v14, v3, v6

    .line 53
    .local v14, "sms":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 54
    sget-object v21, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 55
    .local v21, "uri":Landroid/net/Uri;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 56
    .local v19, "tempSms":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    add-int v5, v5, v22

    .line 52
    .end local v19    # "tempSms":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 61
    .end local v14    # "sms":Ljava/lang/String;
    :cond_4
    move-object v3, v13

    array-length v9, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_6

    aget-object v12, v3, v6

    .line 62
    .local v12, "mms":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 63
    sget-object v21, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 64
    .restart local v21    # "uri":Landroid/net/Uri;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 65
    .local v18, "tempMms":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    add-int v5, v5, v22

    .line 61
    .end local v18    # "tempMms":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 71
    .end local v12    # "mms":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v5, :cond_8

    .line 72
    move-object v3, v13

    array-length v9, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_8

    aget-object v12, v3, v6

    .line 73
    .restart local v12    # "mms":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 74
    sget-object v21, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 75
    .restart local v21    # "uri":Landroid/net/Uri;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 76
    .restart local v18    # "tempMms":Ljava/lang/String;
    const-string v22, "_id ="

    const-string v23, "msg_id ="

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 77
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    .end local v18    # "tempMms":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 81
    .end local v12    # "mms":Ljava/lang/String;
    :cond_8
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 82
    .local v10, "messageId":J
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/sonyericsson/conversations/model/ModelCache;->removeMessage(JJ)Lcom/sonyericsson/conversations/model/Message;

    goto :goto_4

    .line 85
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "deleteCount":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "len$":I
    .end local v10    # "messageId":J
    .end local v13    # "mmsWhere":[Ljava/lang/String;
    .end local v15    # "smsWhere":[Ljava/lang/String;
    .end local v16    # "strMmsWhereBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "strSmsWhereBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "tempThreadId":Ljava/lang/String;
    :cond_9
    return-void
.end method
