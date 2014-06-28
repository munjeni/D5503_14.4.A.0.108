.class Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;
.super Landroid/os/AsyncTask;
.source "ConversationListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkReadTask"
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
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 346
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 347
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;->mContext:Landroid/content/Context;

    .line 348
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 356
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 357
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->MARK_READ_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 366
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/notifications/Notifications;->get(Landroid/content/Context;I)Lcom/sonyericsson/conversations/notifications/Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/notifications/Notification;->update()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const-string v2, "MarkReadTask"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_POST_MARK_READ:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 342
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$MarkReadTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel;->MODEL_EVENT_PRE_MARK_READ:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    return-void
.end method
