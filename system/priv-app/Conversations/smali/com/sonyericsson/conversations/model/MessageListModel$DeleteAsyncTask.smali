.class Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;
.super Landroid/os/AsyncTask;
.source "MessageListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/MessageListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[J",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckedItemPositions:Landroid/util/SparseBooleanArray;

.field private mContext:Landroid/content/Context;

.field private mIsStarredDeleted:Z

.field private mItemsId:[J

.field private mItemsStarred:[Z

.field private mMessageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadId:J

.field private mTotalCount:I

.field final synthetic this$0:Lcom/sonyericsson/conversations/model/MessageListModel;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/MessageListModel;Landroid/content/Context;ILandroid/util/SparseBooleanArray;J[JZ[Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "totalCount"    # I
    .param p4, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p5, "threadId"    # J
    .param p7, "itemsId"    # [J
    .param p8, "isStarredDeleted"    # Z
    .param p9, "itemsStarred"    # [Z

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 240
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mIsStarredDeleted:Z

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mMessageIds:Ljava/util/ArrayList;

    .line 241
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mContext:Landroid/content/Context;

    .line 242
    iput-wide p5, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mThreadId:J

    .line 243
    iput p3, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mTotalCount:I

    .line 244
    iput-object p4, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    .line 245
    iput-object p7, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mItemsId:[J

    .line 246
    iput-boolean p8, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mIsStarredDeleted:Z

    .line 247
    iput-object p9, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mItemsStarred:[Z

    .line 248
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([[J)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [[J

    .prologue
    .line 255
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mTotalCount:I

    if-ge v0, v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mCheckedItemPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mIsStarredDeleted:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mItemsStarred:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mMessageIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mItemsId:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mThreadId:J

    iget-object v4, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mMessageIds:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/ConversationsDeleteController;->removeMarkedMessages(Landroid/content/Context;JLjava/util/List;)V

    .line 265
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 221
    check-cast p1, [[J

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->doInBackground([[J)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/MessageListModel;

    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/MessageListModel;

    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_POST_DELETE:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->mMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MessageListModel$DeleteAsyncTask;->this$0:Lcom/sonyericsson/conversations/model/MessageListModel;

    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    return-void
.end method
