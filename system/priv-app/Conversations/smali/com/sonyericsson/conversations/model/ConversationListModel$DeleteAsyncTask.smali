.class Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;
.super Landroid/os/AsyncTask;
.source "ConversationListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckedCount:I

.field private mCheckedItemPositions:Landroid/util/SparseBooleanArray;

.field private mContext:Landroid/content/Context;

.field private mDeleteStarred:Z

.field private mIsWriteNewDeleted:Z

.field private mItemsId:[J

.field private mItemsStarred:[Z

.field private mItemsType:[I

.field private mSelectedThreadId:J

.field private mThreadIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalCount:I

.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/Context;IILandroid/util/SparseBooleanArray;J[J[IZ[Z)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "checkedCount"    # I
    .param p4, "totalCount"    # I
    .param p5, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p6, "threadId"    # J
    .param p8, "ids"    # [J
    .param p9, "types"    # [I
    .param p10, "deleteStarred"    # Z
    .param p11, "itemsStarred"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 233
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 234
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mThreadIds:Ljava/util/ArrayList;

    .line 225
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mIsWriteNewDeleted:Z

    .line 227
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mDeleteStarred:Z

    .line 235
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mContext:Landroid/content/Context;

    .line 236
    iput p3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mCheckedCount:I

    .line 237
    iput p4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mTotalCount:I

    .line 238
    iput-object p5, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    .line 239
    iput-wide p6, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mSelectedThreadId:J

    .line 240
    iput-object p8, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mItemsId:[J

    .line 241
    iput-object p9, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mItemsType:[I

    .line 242
    iput-boolean p10, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mDeleteStarred:Z

    .line 243
    iput-object p11, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mItemsStarred:[Z

    .line 244
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 19
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 254
    .local v5, "cr":Landroid/content/ContentResolver;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v10, "sbd":Ljava/lang/StringBuilder;
    const/16 v7, 0x96

    .line 256
    .local v7, "maxThreadIdCount":I
    const-string v9, "thread_id in ("

    .line 257
    .local v9, "preSelection":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const/4 v4, 0x0

    .line 260
    .local v4, "count":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mTotalCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_9

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    if-nez v16, :cond_1

    .line 260
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 265
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mDeleteStarred:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mItemsStarred:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, v6

    if-nez v16, :cond_0

    .line 269
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mItemsId:[J

    move-object/from16 v16, v0

    aget-wide v12, v16, v6

    .line 270
    .local v12, "threadId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mThreadIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mItemsType:[I

    move-object/from16 v16, v0

    aget v14, v16, v6

    .line 272
    .local v14, "threadType":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 273
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getClearAlertList()Landroid/content/Intent;

    move-result-object v8

    .line 274
    .local v8, "outboundIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 280
    .end local v8    # "outboundIntent":Landroid/content/Intent;
    :cond_3
    const-wide/16 v16, -0x1

    cmp-long v16, v12, v16

    if-eqz v16, :cond_8

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-object/from16 v16, v0

    # getter for: Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z
    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/conversations/model/ConversationListModel;->access$000(Lcom/sonyericsson/conversations/model/ConversationListModel;)Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mSelectedThreadId:J

    move-wide/from16 v16, v0

    cmp-long v16, v12, v16

    if-nez v16, :cond_5

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z
    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/conversations/model/ConversationListModel;->access$002(Lcom/sonyericsson/conversations/model/ConversationListModel;Z)Z

    .line 293
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mCheckedCount:I

    move/from16 v16, v0

    # getter for: Lcom/sonyericsson/conversations/model/ConversationListModel;->SINGLE_DELETION_THRESHOLD:I
    invoke-static {}, Lcom/sonyericsson/conversations/model/ConversationListModel;->access$200()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 294
    sget-object v16, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 295
    .local v15, "uri":Landroid/net/Uri;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    .end local v15    # "uri":Landroid/net/Uri;
    :goto_3
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12, v13}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteWallpaper(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 314
    :catch_0
    move-exception v16

    goto/16 :goto_1

    .line 283
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-object/from16 v16, v0

    # getter for: Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsGroupThreadDeleted:Z
    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/conversations/model/ConversationListModel;->access$100(Lcom/sonyericsson/conversations/model/ConversationListModel;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v12, v13}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    .line 285
    .local v3, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    if-eqz v3, :cond_4

    .line 286
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 287
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsGroupThreadDeleted:Z
    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/conversations/model/ConversationListModel;->access$102(Lcom/sonyericsson/conversations/model/ConversationListModel;Z)Z

    goto :goto_2

    .line 297
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v3    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    :cond_6
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v4, v4, 0x1

    .line 300
    if-lt v4, v7, :cond_7

    .line 301
    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 302
    .local v11, "selection":Ljava/lang/String;
    sget-object v16, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v11, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 303
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 304
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const/4 v4, 0x0

    .line 306
    goto :goto_3

    .line 307
    .end local v11    # "selection":Ljava/lang/String;
    :cond_7
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 320
    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mIsWriteNewDeleted:Z

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z
    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/conversations/model/ConversationListModel;->access$002(Lcom/sonyericsson/conversations/model/ConversationListModel;Z)Z

    goto/16 :goto_1

    .line 324
    .end local v12    # "threadId":J
    .end local v14    # "threadType":I
    :cond_9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 325
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 326
    .restart local v11    # "selection":Ljava/lang/String;
    sget-object v16, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v11, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 328
    .end local v11    # "selection":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mThreadIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/conversations/model/ConversationCache;->delete(Ljava/util/ArrayList;)V

    .line 329
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    return-object v16
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mIsWriteNewDeleted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 208
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_POST_DELETE:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mIsWriteNewDeleted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->mThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 208
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    return-void
.end method
