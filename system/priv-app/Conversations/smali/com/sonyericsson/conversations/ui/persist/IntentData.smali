.class public Lcom/sonyericsson/conversations/ui/persist/IntentData;
.super Ljava/lang/Object;
.source "IntentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    }
.end annotation


# static fields
.field public static final INTENT_EXTRA_FORCE_MMS:Ljava/lang/String; = "force_mms"

.field public static final INTENT_EXTRA_MESSAGE_URI:Ljava/lang/String; = "msg_uri"

.field public static final INTENT_EXTRA_REPLY_ALL_MESSAGE_URI:Ljava/lang/String; = "reply_all_msg_uri"

.field public static final INTENT_EXTRA_SOURCE_THREAD_ID:Ljava/lang/String; = "source_thread_id"

.field public static final INTENT_EXTRA_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final INTENT_EXTRA_VIEW_MESSAGE_URI:Ljava/lang/String; = "view_msg_uri"


# instance fields
.field public final conversation:Lcom/sonyericsson/conversations/model/Conversation;

.field public final focusMessageUri:Landroid/net/Uri;

.field public final sendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/model/Conversation;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/net/Uri;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;
    .param p2, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .param p3, "focusMessageUri"    # Landroid/net/Uri;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData;->conversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 116
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData;->sendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .line 117
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/persist/IntentData;->focusMessageUri:Landroid/net/Uri;

    .line 118
    return-void
.end method

.method private static extractSendToData(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)Ljava/util/List;
    .locals 19
    .param p0, "intentUri"    # Landroid/net/Uri;
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 326
    .local v16, "uriString":Ljava/lang/String;
    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, "ssp":Ljava/lang/String;
    const/16 v17, 0x3f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 331
    .local v3, "firstQueryPos":I
    if-ltz v3, :cond_2

    .line 332
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 336
    .local v12, "recipientList":Ljava/lang/String;
    add-int/lit8 v17, v3, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, "queryString":Ljava/lang/String;
    const-string v17, "&"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 339
    .local v9, "queryParams":[Ljava/lang/String;
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v8, v2, v4

    .line 340
    .local v8, "queryParam":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "paramKeyValue":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 343
    const/16 v17, 0x0

    aget-object v17, v6, v17

    const-string v18, "subject"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 347
    const/16 v17, 0x1

    aget-object v17, v6, v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->subject:Ljava/lang/String;

    .line 339
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 348
    :cond_1
    const/16 v17, 0x0

    aget-object v17, v6, v17

    const-string v18, "body"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 351
    const/16 v17, 0x1

    aget-object v17, v6, v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    goto :goto_1

    .line 356
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "paramKeyValue":[Ljava/lang/String;
    .end local v8    # "queryParam":Ljava/lang/String;
    .end local v9    # "queryParams":[Ljava/lang/String;
    .end local v10    # "queryString":Ljava/lang/String;
    .end local v12    # "recipientList":Ljava/lang/String;
    :cond_2
    move-object v12, v14

    .line 359
    .restart local v12    # "recipientList":Ljava/lang/String;
    :cond_3
    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 361
    const-string v17, ",+"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 362
    .local v13, "recipients":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    .local v7, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    move-object v2, v13

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v5, v2

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v11, v2, v4

    .line 365
    .local v11, "recipient":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 366
    .local v15, "trimmed":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 367
    new-instance v17, Lcom/sonyericsson/conversations/model/Participant;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 371
    .end local v11    # "recipient":Ljava/lang/String;
    .end local v15    # "trimmed":Ljava/lang/String;
    :cond_5
    return-object v7
.end method

.method private static isLauncherIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 315
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/conversations/ui/persist/IntentData;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "action":Ljava/lang/String;
    const/4 v7, 0x0

    .line 128
    .local v7, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    const/4 v11, 0x0

    .line 129
    .local v11, "focusMessageUri":Landroid/net/Uri;
    new-instance v21, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    invoke-direct/range {v21 .. v21}, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;-><init>()V

    .line 130
    .local v21, "sendIntentData":Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    const/4 v12, 0x0

    .line 133
    .local v12, "hasSendIntentData":Z
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 134
    const-wide/16 v28, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    .line 135
    new-instance v28, Lcom/sonyericsson/conversations/ui/persist/IntentData;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v7, v1, v2}, Lcom/sonyericsson/conversations/ui/persist/IntentData;-><init>(Lcom/sonyericsson/conversations/model/Conversation;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/net/Uri;)V

    .line 303
    .end local v21    # "sendIntentData":Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    :goto_0
    return-object v28

    .line 139
    .restart local v21    # "sendIntentData":Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    :cond_0
    const-string v28, "android.intent.action.SENDTO"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    const-string v28, "android.intent.action.VIEW"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 140
    :cond_1
    const-string v28, "sms_body"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 142
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 143
    const-string v28, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 146
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    .line 147
    const-string v28, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    .line 148
    .local v25, "uri":Landroid/net/Uri;
    if-eqz v25, :cond_3

    .line 149
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_5

    .line 154
    :cond_4
    const/4 v12, 0x1

    .line 155
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->needCheckContent:Z

    .line 158
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 160
    .local v14, "intentUri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 161
    .local v19, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v14, :cond_c

    .line 162
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 164
    .local v20, "scheme":Ljava/lang/String;
    const-string v28, "smsto"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "mmsto"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "sms"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "mms"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "mailto"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 171
    :cond_6
    const/4 v12, 0x1

    .line 173
    move-object/from16 v0, v21

    invoke-static {v14, v0}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->extractSendToData(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)Ljava/util/List;

    move-result-object v19

    .line 174
    const-string v28, "force_mms"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forceMms:Z

    .line 177
    const-string v28, "reply_all_msg_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    .line 179
    .local v18, "p":Landroid/os/Parcelable;
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/net/Uri;

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 180
    check-cast v18, Landroid/net/Uri;

    .end local v18    # "p":Landroid/os/Parcelable;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    .line 199
    .end local v20    # "scheme":Ljava/lang/String;
    :cond_7
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_8

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    .line 201
    if-eqz v7, :cond_8

    .line 202
    invoke-static {v7}, Lcom/sonyericsson/conversations/model/ConversationCache;->put(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 260
    .end local v14    # "intentUri":Landroid/net/Uri;
    .end local v19    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v25    # "uri":Landroid/net/Uri;
    :cond_8
    :goto_1
    if-nez v7, :cond_b

    .line 262
    const-string v28, "thread_id"

    const-wide/16 v29, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    .line 264
    .local v23, "threadId":J
    const-wide/16 v28, -0x1

    cmp-long v28, v23, v28

    if-nez v28, :cond_9

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 268
    .local v8, "conversationUri":Landroid/net/Uri;
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 272
    :try_start_0
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v23

    .line 279
    .end local v8    # "conversationUri":Landroid/net/Uri;
    :cond_9
    :goto_2
    const-wide/16 v28, -0x1

    cmp-long v28, v23, v28

    if-eqz v28, :cond_a

    .line 280
    invoke-static/range {v23 .. v24}, Lcom/sonyericsson/conversations/model/ConversationCache;->get(J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    .line 282
    if-nez v7, :cond_a

    .line 283
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    .line 285
    if-eqz v7, :cond_a

    .line 286
    invoke-static {v7}, Lcom/sonyericsson/conversations/model/ConversationCache;->put(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 291
    :cond_a
    if-eqz v7, :cond_b

    .line 294
    const-string v28, "view_msg_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    .line 297
    .local v27, "viewMsgExtra":Landroid/os/Parcelable;
    if-eqz v27, :cond_b

    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/net/Uri;

    move/from16 v28, v0

    if-eqz v28, :cond_b

    move-object/from16 v11, v27

    .line 298
    check-cast v11, Landroid/net/Uri;

    .line 303
    .end local v23    # "threadId":J
    .end local v27    # "viewMsgExtra":Landroid/os/Parcelable;
    :cond_b
    new-instance v28, Lcom/sonyericsson/conversations/ui/persist/IntentData;

    if-eqz v12, :cond_12

    .end local v21    # "sendIntentData":Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    :goto_3
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v1, v11}, Lcom/sonyericsson/conversations/ui/persist/IntentData;-><init>(Lcom/sonyericsson/conversations/model/Conversation;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 187
    .restart local v14    # "intentUri":Landroid/net/Uri;
    .restart local v19    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v21    # "sendIntentData":Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;
    .restart local v25    # "uri":Landroid/net/Uri;
    :cond_c
    const-string v28, "address"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "addressList":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 189
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .restart local v19    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/String;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_4
    if-ge v13, v15, :cond_7

    aget-object v17, v6, v13

    .line 192
    .local v17, "number":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_d

    .line 193
    new-instance v28, Lcom/sonyericsson/conversations/model/Participant;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 205
    .end local v5    # "addressList":Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "intentUri":Landroid/net/Uri;
    .end local v15    # "len$":I
    .end local v17    # "number":Ljava/lang/String;
    .end local v19    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v25    # "uri":Landroid/net/Uri;
    :cond_e
    const-string v28, "android.intent.action.SEND"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 206
    const/4 v12, 0x1

    .line 207
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->needCheckContent:Z

    .line 211
    const-string v28, "msg_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 213
    const-string v28, "source_thread_id"

    const-wide/16 v29, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardThreadid:J

    .line 215
    const-string v28, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    .line 217
    const-string v28, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 218
    .local v10, "extraStream":Landroid/net/Uri;
    if-eqz v10, :cond_8

    .line 219
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 221
    .end local v10    # "extraStream":Landroid/net/Uri;
    :cond_f
    const-string v28, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 222
    const/4 v12, 0x1

    .line 223
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->needCheckContent:Z

    .line 226
    const-string v28, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 227
    const-string v28, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 228
    .local v26, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v26, :cond_10

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_10

    .line 229
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 233
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 234
    .local v16, "mime":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    .line 247
    .end local v16    # "mime":Ljava/lang/String;
    .end local v26    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_10
    :goto_5
    const-string v28, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 252
    const-string v28, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 253
    .local v22, "text":Ljava/lang/CharSequence;
    if-eqz v22, :cond_8

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 254
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    goto/16 :goto_1

    .line 243
    .end local v22    # "text":Ljava/lang/CharSequence;
    .restart local v26    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_11
    const-string v28, "*/*"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    goto :goto_5

    .line 273
    .end local v26    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v8    # "conversationUri":Landroid/net/Uri;
    .restart local v23    # "threadId":J
    :catch_0
    move-exception v9

    .line 274
    .local v9, "e":Ljava/lang/RuntimeException;
    const-wide/16 v23, -0x1

    goto/16 :goto_2

    .line 303
    .end local v8    # "conversationUri":Landroid/net/Uri;
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v23    # "threadId":J
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_3
.end method
