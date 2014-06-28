.class Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;
.super Landroid/os/AsyncTask;
.source "ConversationListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryCurrentThreadTask"
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
.field private mContext:Landroid/content/Context;

.field mSelectedThreadId:J

.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/Context;J)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "selectedThreadId"    # J

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    .line 176
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;->mContext:Landroid/content/Context;

    .line 178
    iput-wide p3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;->mSelectedThreadId:J

    .line 179
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    # getter for: Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->access$000(Lcom/sonyericsson/conversations/model/ConversationListModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;->mSelectedThreadId:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 191
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/conversations/model/ConversationListModel;->mIsCurrentThreadDeleted:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->access$002(Lcom/sonyericsson/conversations/model/ConversationListModel;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 200
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 195
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryCurrentThreadTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
