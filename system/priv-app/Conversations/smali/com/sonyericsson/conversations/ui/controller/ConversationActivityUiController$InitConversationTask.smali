.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;
.super Landroid/os/AsyncTask;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitConversationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1136
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    .line 1137
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .line 1138
    return-void
.end method

.method private chooseSendIntentDataOverDraft()Z
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isDraftStored()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    const/4 v0, 0x1

    .line 1216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareThreadForReplyAll()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1264
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    iget-object v3, v9, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    .line 1266
    .local v3, "mmsUri":Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1267
    .local v1, "messageId":J
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getThreadIdForMessage(Landroid/content/Context;Landroid/net/Uri;)J
    invoke-static {v9, v10, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$700(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 1268
    .local v4, "originalThreadId":J
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v9, v9, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v6

    .line 1270
    .local v6, "threadIdForAll":J
    invoke-static {v1, v2}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMessage(J)Landroid/net/Uri;

    move-result-object v8

    .line 1271
    .local v8, "uri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1272
    new-instance v0, Landroid/content/ContentValues;

    const/4 v9, 0x2

    invoke-direct {v0, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1273
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v9, "thread_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1274
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1275
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1276
    const-string v9, "thread_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1277
    const-string v9, "parent_thread_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1278
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1279
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1160
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1161
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->prepareThreadForReplyAll()V

    .line 1167
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->chooseSendIntentDataOverDraft()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1168
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkExternalSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;Landroid/content/Context;)I

    move-result v1

    .line 1170
    .local v1, "errorCode":I
    if-eqz v1, :cond_1

    .line 1171
    const/16 v2, 0xd0

    if-ne v1, v2, :cond_4

    .line 1172
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(I)V
    invoke-static {v2, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$400(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V

    .line 1178
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-eqz v2, :cond_2

    .line 1179
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateComposerFromSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$500(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    .line 1191
    .end local v1    # "errorCode":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    iget-boolean v2, v2, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forceMms:Z

    if-eqz v2, :cond_3

    .line 1192
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v3, 0x1

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->convertMessageTypeInUiThread(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$600(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    :cond_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    return-object v2

    .line 1173
    .restart local v1    # "errorCode":I
    :cond_4
    const/16 v2, 0xca

    if-ne v1, v2, :cond_1

    .line 1174
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(I)V
    invoke-static {v2, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$400(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V

    .line 1175
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 1181
    .end local v1    # "errorCode":I
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1185
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateComposerFromDraftStack(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ConversationActivityUiController"

    const-string v3, "Error while loading conversation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1131
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    .line 1222
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 1223
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    .line 1227
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput-boolean v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    .line 1228
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 1230
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-nez v0, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1237
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->invalidateOptionsMenu()V

    .line 1244
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    goto :goto_0

    .line 1253
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1131
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    .line 1145
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->mSendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    iget-boolean v0, v0, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->needCheckContent:Z

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const-string v1, ""

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f07009e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1154
    :cond_1
    return-void
.end method
